package com.base.DaoImpl;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.SessionFactoryUtils;
import org.springframework.stereotype.Repository;

import com.base.Dao.CompanyDao;
import com.base.Po.Company;
import com.base.Po.CompanyList;
import com.base.utils.BaseUtils;
import com.base.utils.SqlConnectionUtils;
@Repository("CompanyDao")
public class CompanyDaoimpl implements CompanyDao{

	@Autowired
	 private SessionFactory sessionFactory;
	
	@Override
	public int addsCompany(String title, String photo,String gname) {
		// TODO Auto-generated method stub
		int flag=0;
		Connection conn = null;
		PreparedStatement ps=null;
		ResultSet rs = null;
		CallableStatement sp = null;
		try {
		    conn = (Connection) SessionFactoryUtils.getDataSource(
			    sessionFactory).getConnection();
		    sp = (CallableStatement) conn
					.prepareCall("{CALL innovatespoc.check_CommunicationCompany(?,?,?,?)}");
			sp.setString(1, title);
			sp.setString(2, photo);
			sp.setString(3, gname);
			sp.execute();
		    flag = sp.getInt(4);
		} catch (SQLException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		} finally {
		    SqlConnectionUtils.free(conn, ps, rs);
		}
		return flag;
	}

	@Override
	public CompanyList queryCompany(Integer size, Integer pageindex,
			String columnName, String orderDir, String searchValue) {
		// TODO Auto-generated method stub
		int recordsTotal = 0;
		Connection conn = null;
		CallableStatement sp = null;
		ResultSet rs = null;
		List<Company> list = new ArrayList<Company>();
		try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
					sessionFactory).getConnection();
			sp = (CallableStatement) conn
					.prepareCall("{call innovatespoc.query_ComuCompany(?,?,?,?,?,?)}");
			sp.setInt(1, size);
			sp.setInt(2, pageindex);
			sp.setString(3, columnName);
			sp.setString(4, orderDir);
			sp.setString(5, searchValue);
			sp.registerOutParameter(6, java.sql.Types.INTEGER);
			sp.execute();
			recordsTotal = sp.getInt(6);
			rs = sp.getResultSet();
			while (rs.next()) {
				System.out.println("************************");
				System.out.println(rs.getInt("id"));
				System.out.println(rs.getString("title"));
				System.out.println(rs.getString("photo"));
				System.out.println(rs.getString("gname"));
				System.out.println("************************");
				Company ch = new Company();
				ch.setId(rs.getInt("id"));
				ch.setTitle(rs.getString("title"));
				ch.setPhoto(rs.getString("photo"));
				ch.setGname(rs.getString("gname"));
				list.add(ch);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			SqlConnectionUtils.free(conn, sp, rs);
		}
		CompanyList ck = new CompanyList();
		ck.setRecordsTotal(recordsTotal);
		ck.setData(list);
		return ck;
	}

	@Override
	public String deleteCompany(String str) {
		// TODO Auto-generated method stub
		int flag = 0;
		String message = null;
		Connection conn = null;
		CallableStatement sp = null;
		try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
					sessionFactory).getConnection();
			sp = (CallableStatement) conn
					.prepareCall("{CALL innovatespoc.delete_CommunicationCompany(?,?)}");
			sp.setString(1, str);
			sp.execute();
			flag = sp.getInt(2); 
			message=BaseUtils.getException(flag);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			SqlConnectionUtils.free(conn, sp, null);
		}
		return message;
	}

	@Override
	public void updateCompany(String title, String photo ,String gname,int id) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			
			/*System.out.println("************************");
			System.out.println(title);
			System.out.println(photo);
			System.out.println(gname);
			System.out.println(id);
			System.out.println("************************");*/
			conn = (Connection) SessionFactoryUtils.getDataSource(
				    sessionFactory).getConnection();
			String sql = "update communication_company set title =?, photo =?, gname=?  where id =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, photo);
			pstmt.setString(3, gname);
			pstmt.setInt(4, id);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			SqlConnectionUtils.free(conn, pstmt, rs);
		}
	}

	@Override
	public List<Company> get_Pcompany() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql="from communication_company where gname='程序组'";
		List<Company> list=null;
		try {
	    	 Query query=session.createQuery(hql);
	    	 list=query.list();
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			session.close();
		}
		return list;
	}

	@Override
	public List<Company> get_Ucompany() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql="from communication_company where gname='UI组'";
		List<Company> list=null;
		try {
	    	 Query query=session.createQuery(hql);
	    	 list=query.list();
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			session.close();
		}
		return list;
	}

	@Override
	public List<Company> get_Dcompany() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql="from communication_company where gname='3D组'";
		List<Company> list=null;
		try {
	    	 Query query=session.createQuery(hql);
	    	 list=query.list();
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			session.close();
		}
		return list;
	}
}
