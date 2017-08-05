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

import com.base.Dao.SkillStudentDao;
import com.base.Po.skill_student;
import com.base.Po.skill_studentList;
import com.base.Po.skills;
import com.base.Po.students;
import com.base.utils.BaseUtils;
import com.base.utils.SqlConnectionUtils;

@Repository("SkillStudentDao")
public class SkillStudentDaoImpl implements SkillStudentDao{

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<skills> getSkill() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();		
		String hql="from skills";
		List<skills> list=null;
		
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
	public skill_studentList query_internship(Integer size, Integer pageindex,
			String columnName, String orderDir, String searchValue) {
		// TODO Auto-generated method stub
		int recordsTotal = 0;
		Connection conn = null;
		CallableStatement sp = null;
		ResultSet rs = null;
		List<skill_student> list = new ArrayList<skill_student>();
		try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
					sessionFactory).getConnection();
			sp = (CallableStatement) conn
					.prepareCall("{call innovatespoc.query_SkillStudent(?,?,?,?,?,?)}");
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
				skill_student ch = new skill_student();
				ch.setId(Integer.parseInt(rs.getString("id")));
				ch.setKid(rs.getString("kid"));
				ch.setSkill_name(rs.getString("skill_name"));
				ch.setSid(rs.getString("sid"));
				ch.setSname(rs.getString("sname"));
				ch.setSkill_exp(rs.getString("skill_exp"));
				list.add(ch);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			SqlConnectionUtils.free(conn, sp, rs);
		}
		skill_studentList ck = new skill_studentList();
		ck.setRecordsTotal(recordsTotal);
		ck.setData(list);
		return ck;
	}

	@Override
	public int addSkillstudent(String studentId, int kid, String exp) {
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
					.prepareCall("{CALL innovatespoc.check_SkillStudent(?,?,?,?)}");
			sp.setString(1, studentId);
			sp.setInt(2, kid);
			sp.setString(3, exp);
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
	public String delSkillstudent(String str) {
		// TODO Auto-generated method stub
		int flag = 0;
		String message = null;
		Connection conn = null;
		CallableStatement sp = null;
		try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
					sessionFactory).getConnection();
			sp = (CallableStatement) conn
					.prepareCall("{CALL innovatespoc.delete_SkillStudent(?,?)}");
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
	public void updateSkill(int id, String exp) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
				    sessionFactory).getConnection();
			String sql = "update skill_student set skill_exp=? where id =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, exp);
			pstmt.setInt(2, id);
			pstmt.executeUpdate();
			System.out.println(exp);
			System.out.println(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			SqlConnectionUtils.free(conn, pstmt, rs);
		}
	}

	@Override
	public List<students> getsname() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();		
		String hql="from students";
		List<students> list=null;
		
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
