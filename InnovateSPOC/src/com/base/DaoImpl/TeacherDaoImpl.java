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

import com.base.Dao.TeacherDao;
import com.base.Po.teacherList;
import com.base.Po.teachers;
import com.base.utils.BaseUtils;
import com.base.utils.SqlConnectionUtils;


@Repository("TeacherDao")
public class TeacherDaoImpl implements TeacherDao{
	 @Autowired
	 private SessionFactory sessionFactory;

	 //增加教师
	 @Override
	 public int addTeacher(String teacherId,String teacherName,String sex,String Areason,String password,String filename,int gid,String position) {
		 	int flag=0;
			Connection conn = null;
			PreparedStatement ps=null;
			ResultSet rs = null;
			CallableStatement sp = null;
			try {
			    conn = (Connection) SessionFactoryUtils.getDataSource(
				    sessionFactory).getConnection();
			    sp = (CallableStatement) conn
						.prepareCall("{CALL innovatespoc.check_teacher(?,?,?,?,?,?,?,?,?)}");
				sp.setString(1, teacherId);
				sp.setString(2, teacherName);
				sp.setString(3, sex);
				sp.setString(4, filename);
				sp.setString(5, Areason);
				sp.setString(6, password);
				sp.setInt(7, gid);
				sp.setString(8, position);
				sp.execute();
			    flag = sp.getInt(9);
			} catch (SQLException e) {
			    // TODO Auto-generated catch block
			    e.printStackTrace();
			} finally {
			    SqlConnectionUtils.free(conn, ps, rs);
			}
			return flag;
		}
	
	 
	// 删除教师
	@Override
	public String deleteTeacher(String str) {
		int flag = 0;
		String message = null;
		Connection conn = null;
		CallableStatement sp = null;
		try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
					sessionFactory).getConnection();
			sp = (CallableStatement) conn
					.prepareCall("{CALL innovatespoc.delete_teacher(?,?)}");
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
	
	// 分页展示教师信息
	@Override
	public teacherList query_teacher(Integer size, Integer pageindex,
			String columnName, String orderDir, String searchValue) {
		// TODO Auto-generated method stub
		int recordsTotal = 0;
		Connection conn = null;
		CallableStatement sp = null;
		ResultSet rs = null;
		List<teachers> list = new ArrayList<teachers>();
		try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
					sessionFactory).getConnection();
			sp = (CallableStatement) conn
					.prepareCall("{call innovatespoc.query_teacher(?,?,?,?,?,?)}");
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
				teachers ch = new teachers();
				ch.setTid(rs.getString("id"));
				ch.setTname(rs.getString("name"));
				ch.setSex(rs.getString("sex"));
				ch.setTeacher_introduce(rs.getString("introduce"));
				ch.setGid(rs.getInt("gid"));
				ch.setGname(rs.getString("gname"));
				ch.setPhoto_address(rs.getString("photo_address"));
				ch.setPosition(rs.getString("position"));
				list.add(ch);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			SqlConnectionUtils.free(conn, sp, rs);
		}
		teacherList ck = new teacherList();
		ck.setRecordsTotal(recordsTotal);
		ck.setData(list);
		return ck;

	}
	
	//检查教师id是否已存在
	@Override
	public int CheckteacherId(int teacherId) {
		Connection conn = null;
		CallableStatement sp = null;
		int flag = 0;
		try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
					sessionFactory).getConnection();
			sp = (CallableStatement) conn
					.prepareCall("{call baseweb.check_teacherId(?,?)}");
			sp.setInt(1, teacherId);
			sp.registerOutParameter(2, java.sql.Types.INTEGER);
		    sp.execute();
		    flag=sp.getInt(2);		    
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			SqlConnectionUtils.free(conn, sp, null);
		}
		return flag;
	    }

	//修改教师信息
	@Override
	public void updateteacher(String tid, String tintroduce, int gid,String photo,String position) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement ps=null;
		ResultSet rs = null;		
		try {
		    conn = (Connection) SessionFactoryUtils.getDataSource(
			    sessionFactory).getConnection();
		    String sql =("update teachers set teacher_introduce=?,gid=?,photo_address=?,`position`=? where tid=?");
		    ps = conn.prepareStatement(sql);
		    ps.setString(1, tintroduce);
		    ps.setInt(2, gid);
		    ps.setString(3, photo);
		    ps.setString(4, position);
		    ps.setString(5, tid);
		    ps.executeUpdate();
		} catch (SQLException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		} finally {
		    SqlConnectionUtils.free(conn, ps, rs);
		}
	}
	
	//获得教师
	@Override
	public List<teachers> getTeacher(int gid){
		List<teachers> list = null;
		Session session=sessionFactory.openSession();		
		String hql="from teachers where gid=?";
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
	public List<teachers> getTeacher(String tid) {
		List<teachers> list = null;
		Session session=sessionFactory.openSession();		
		String hql="from teachers where tid=?";
		try {
	    	 Query query=session.createQuery(hql);
	    	 query.setString(0, tid);
	    	 list=query.list();
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			session.close();
		}
		return list;
	}
}
