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

import com.base.Dao.StudentDao;
import com.base.Po.groups;
import com.base.Po.studentList;
import com.base.Po.students;
import com.base.utils.BaseUtils;
import com.base.utils.SqlConnectionUtils;

@Repository("StudentDao")
public class StudentDaoImpl implements StudentDao{
	 @Autowired
	 private SessionFactory sessionFactory;

	@Override
	public int addstudent(String studentId, String studentName, String sex,
			String areason, String password, String caddress, String eaddress,
			String telephone, String qq, String enrollmentYear,String major, String gra,
			String emp,String filename,int gid) {
		// TODO Auto-generated method stub
		int flag=0;
		Connection conn = null;
		PreparedStatement ps=null;
		ResultSet rs = null;
		CallableStatement sp = null;
		System.out.println(gid);
		try {
		    conn = (Connection) SessionFactoryUtils.getDataSource(
			    sessionFactory).getConnection();
		    sp = (CallableStatement) conn
					.prepareCall("{CALL innovatespoc.check_student(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
			sp.setString(1, studentId);
			sp.setString(2, studentName);
			sp.setString(3, areason);
			sp.setString(4, sex);
			sp.setString(5, filename);
			sp.setString(6, password);
			sp.setString(7, caddress);
			sp.setString(8, eaddress);
			sp.setString(9, telephone);
			sp.setString(10, qq);
			sp.setString(11, enrollmentYear);
			sp.setString(12, major);
			sp.setString(13, gra);
			sp.setString(14, emp);
			sp.setInt(15, gid);
			sp.execute();
		    flag = sp.getInt(16);
		} catch (SQLException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		} finally {
		    SqlConnectionUtils.free(conn, ps, rs);
		}
		return flag;
	}
	
	//展示学生信息
	@Override
	public studentList query_student(Integer size, Integer pageindex,
			String columnName, String orderDir, String searchValue) {
		// TODO Auto-generated method stub
		int recordsTotal = 0;
		Connection conn = null;
		CallableStatement sp = null;
		ResultSet rs = null;
		List<students> list = new ArrayList<students>();
		try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
					sessionFactory).getConnection();
			sp = (CallableStatement) conn
					.prepareCall("{call innovatespoc.query_student(?,?,?,?,?,?)}");
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
				students ch = new students();
				ch.setSid(rs.getString("id"));
				ch.setSname(rs.getString("name"));
				ch.setSex(rs.getString("sex"));
				ch.setStudent_introduce(rs.getString("introduce"));
				ch.setChinese_address(rs.getString("caddress"));
				ch.setEnglish_address(rs.getString("eaddress"));
				ch.setPhone(rs.getString("phone"));
				ch.setQq(rs.getString("qq"));
				ch.setSchool_year(rs.getString("schoolyear"));
				ch.setMajor(rs.getString("major"));
				ch.setGraduation(rs.getString("graduation"));
				ch.setEmployed(rs.getString("employed"));
				ch.setGname(rs.getString("gname"));
				ch.setGid(rs.getInt("gid"));
				ch.setHeadshot(rs.getString("headshot"));
				list.add(ch);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			SqlConnectionUtils.free(conn, sp, rs);
		}
		studentList ck = new studentList();
		ck.setRecordsTotal(recordsTotal);
		ck.setData(list);
		return ck;
	}

	//删除学生
	@Override
	public String deleteStudent(String str) {
		// TODO Auto-generated method stub
		int flag = 0;
		String message = null;
		Connection conn = null;
		CallableStatement sp = null;
		try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
					sessionFactory).getConnection();
			sp = (CallableStatement) conn
					.prepareCall("{CALL innovatespoc.delete_student(?,?)}");
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

	//修改学生信息
	@Override
	public void updateStudent(String sid, String Sintroduce,
			String chinese_address, String english_address, String phone,
			String qq, String smajor, int gid, String gra, String emp,String photo){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
				    sessionFactory).getConnection();
			String sql = "update students set student_introduce=?,chinese_address=?,english_address=?,phone=?,qq=?,major=?,gid=?,graduation=?,employed=?,headshot=? where sid =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Sintroduce);
			pstmt.setString(2, chinese_address);
			pstmt.setString(3, english_address);
			pstmt.setString(4, phone);
			pstmt.setString(5, qq);
			pstmt.setString(6, smajor);
			pstmt.setInt(7, gid);
			pstmt.setString(8, gra);
			pstmt.setString(9, emp);
			pstmt.setString(10, photo);
			pstmt.setString(11, sid);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			SqlConnectionUtils.free(conn, pstmt, rs);
		}
	}

	@Override
	public List<groups> getGroup() {
		Session session=sessionFactory.openSession();		
		String hql="from groups";
		List<groups> list=null;
		
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
	public List<students> get_UIstudent(){
		Session session = sessionFactory.openSession();
		String hql="from students where gid = 2";
		List<students> list = null;
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
	public List<students> get_Pstudent(int gid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql="from students where gid=?";
		List<students> list = null;
		try {
	    	 Query query=session.createQuery(hql);
	    	 query.setInteger(0, gid);
	    	 list=query.list();
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			session.close();
		}
		return list;
	}

	@Override
	public List<students> getStudents(String sid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		List<students> list = null;
		String hql ="from students where sid=?";
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

	@Override
	public List<students> get_3Dstudent() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql="from students";
		List<students> list = null;
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
	public List<students> get_CGstudent() {
		Session session = sessionFactory.openSession();
		String hql="from students where gid = 6";
		List<students> list = null;
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