package com.base.DaoImpl;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.SessionFactoryUtils;
import org.springframework.stereotype.Repository;

import com.base.Dao.GroupDao;
import com.base.Po.Group_list;
import com.base.Po.studentList;
import com.base.Po.student_group;
import com.base.Po.students;
import com.base.utils.BaseUtils;
import com.base.utils.SqlConnectionUtils;

@Repository("GroupDao")
public class GroupDaolmpl implements GroupDao{

	@Autowired
	 private SessionFactory sessionFactory;
	
	//显示组别
	@Override
	public Group_list query_group(Integer size, Integer pageindex,
			String columnName, String orderDir, String searchValue) {
		// TODO Auto-generated method stub
		int recordsTotal = 0;
		Connection conn = null;
		CallableStatement sp = null;
		ResultSet rs = null;
		List<student_group> list = new ArrayList<student_group>();
		try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
					sessionFactory).getConnection();
			sp = (CallableStatement) conn
					.prepareCall("{call innovatespoc.query_groups(?,?,?,?,?,?)}");
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
				student_group ch = new student_group();
				ch.setGname(rs.getString("gname"));
				
				ch.setGid(rs.getInt("gid"));
				
				list.add(ch);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			SqlConnectionUtils.free(conn, sp, rs);
		}
		Group_list ck = new Group_list();
		ck.setRecordsTotal(recordsTotal);
		ck.setData(list);
		return ck;
	}
	
	
	//修改组别信息
	@Override
	public void updateGroup(int gid, String gname) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
				
			conn = (Connection) SessionFactoryUtils.getDataSource(
				    sessionFactory).getConnection();
			String sql = "update groups set gname=? where gid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, gname);		
			pstmt.setInt(2, gid);		
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			SqlConnectionUtils.free(conn, pstmt, rs);
		}
		
	}


	@Override
	public int addGroups(String gname) {
		// TODO Auto-generated method stub
		int flag=0;
		Connection conn = null;
		PreparedStatement ps=null;
		ResultSet rs = null;
		CallableStatement sp = null;
		try {
			
			System.out.println("*****************************");
			System.out.println("/////"+gname+"///////");
			System.out.println("*****************************");
			
		    conn = (Connection) SessionFactoryUtils.getDataSource(
			    sessionFactory).getConnection();
		    sp = (CallableStatement) conn
					.prepareCall("{CALL innovatespoc.check_groups(?,?)}");
			sp.setString(1, gname);
			sp.execute();
		    flag = sp.getInt(2);
		} catch (SQLException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		} finally {
		    SqlConnectionUtils.free(conn, ps, rs);
		}
		return flag;
	}


	@Override
	public String deleteGroup(String str) {
		// TODO Auto-generated method stub
		int flag = 0;
		String message = null;
		Connection conn = null;
		CallableStatement sp = null;
		try {
			
			System.out.println("*****************************");
			System.out.println("/////"+str+"///////");
			System.out.println("*****************************");
			
			conn = (Connection) SessionFactoryUtils.getDataSource(
					sessionFactory).getConnection();
			sp = (CallableStatement) conn
					.prepareCall("{CALL innovatespoc.delete_groups(?,?)}");
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
	
}
