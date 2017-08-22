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

import com.base.Dao.EducationExperienceDao;
import com.base.Po.educationList;
import com.base.Po.education_experience;
import com.base.Po.students;
import com.base.utils.BaseUtils;
import com.base.utils.SqlConnectionUtils;

@Repository("EducationExperienceDao")
public class EducationExperienceDaoImple implements EducationExperienceDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	//增加教育经历
	@Override
	public int addeducation(String studentId, String address, String begin,
			String end, String description) {
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
					.prepareCall("{CALL innovatespoc.check_education(?,?,?,?,?,?)}");
			sp.setString(1, studentId);
			sp.setString(2, address);
			sp.setString(3, begin);
			sp.setString(4, end);
			sp.setString(5, description);
			sp.execute();
		    flag = sp.getInt(6);
		} catch (SQLException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		} finally {
		    SqlConnectionUtils.free(conn, ps, rs);
		}
		return flag;
	}
	
	//展示教育经历
	@Override
	public educationList query_education(Integer size, Integer pageindex,
			String columnName, String orderDir, String searchValue) {
		// TODO Auto-generated method stub
		int recordsTotal = 0;
		Connection conn = null;
		CallableStatement sp = null;
		ResultSet rs = null;
		List<education_experience> list = new ArrayList<education_experience>();
		try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
					sessionFactory).getConnection();
			sp = (CallableStatement) conn
					.prepareCall("{call innovatespoc.query_education(?,?,?,?,?,?)}");
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
				education_experience ch = new education_experience();
				ch.setId(Integer.parseInt(rs.getString("id")));
				ch.setSid(rs.getString("sid"));
				ch.setSname(rs.getString("sname"));
				ch.setSchool(rs.getString("school"));
				ch.setBegin_time(rs.getString("begin_time"));
				ch.setEnd_time(rs.getString("end_time"));
				ch.setEducation_description(rs.getString("education_description"));
				list.add(ch);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			SqlConnectionUtils.free(conn, sp, rs);
		}
		educationList ck = new educationList();
		ck.setRecordsTotal(recordsTotal);
		ck.setData(list);
		return ck;
	}
	
	//删除教育经历
	public String delEducation(String str){
		int flag = 0;
		String message = null;
		Connection conn = null;
		CallableStatement sp = null;
		try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
					sessionFactory).getConnection();
			sp = (CallableStatement) conn
					.prepareCall("{CALL innovatespoc.delete_education(?,?)}");
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
	
	//修改
	public void updateEducation(int id,String begin,String end, String description){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
				    sessionFactory).getConnection();
			String sql = "update education_experience set begin_time=?,end_time=?,education_description=? where id =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, begin);
			pstmt.setString(2, end);
			pstmt.setString(3, description);
			pstmt.setInt(4, id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			SqlConnectionUtils.free(conn, pstmt, rs);
		}
	}

	//获得教育经历
	@Override
	public List<education_experience> get_education_experience(String sid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		List<education_experience> list = null;
		String hql ="from education_experience where sid=?";
		try {
	    	 Query query=session.createQuery(hql);
	    	 query.setString(0, sid);
	    	 list=query.list();
			
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			session.close();
		}
		return list;
	}
}
