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

import com.base.Dao.UserCenterDao;
import com.base.Po.teachers;
import com.base.Po.userCenter;
import com.base.utils.SqlConnectionUtils;


@Repository("UserCenterDao")


public class UserCenterDaoImpl implements UserCenterDao {

	@Autowired
    private SessionFactory sessionFactory;

	@Override
	public List<userCenter> getPersonInfo(String id) {

		Connection conn = null;
		CallableStatement sp = null;
		ResultSet rs = null;
		List<userCenter> list = new ArrayList<userCenter>();
		try {
		    conn = (Connection) SessionFactoryUtils.getDataSource(
			    sessionFactory).getConnection();
		    sp = (CallableStatement) conn
			    .prepareCall("{CALL innovatespoc.SelTeacher(?)}");
		    sp.setString(1, id);
		    sp.execute();
		    rs = sp.getResultSet();
		    while (rs.next()) {
		    	userCenter ch = new userCenter();
		    	if(rs.getInt("rol") == 2){
		    		 ch.setSid(rs.getString("sid"));
		 			ch.setSname(rs.getString("sname"));
		 			ch.setSex(rs.getString("sex"));
		 			ch.setStudent_introduce(rs.getString("student_introduce"));
		 			ch.setChinese_address(rs.getString("chinese_address"));
		 			ch.setEnglish_address(rs.getString("english_address"));
		 			ch.setPhone(rs.getString("phone"));
		 			ch.setQq(rs.getString("qq"));
		 			ch.setSchool_year(rs.getString("school_year"));
		 			ch.setMajor(rs.getString("major"));
		 			ch.setGraduation(rs.getString("graduation"));
		 			ch.setHeadshot(rs.getString("headshot"));
		 			ch.setEmployed(rs.getString("employed"));
		 			ch.setPassword(rs.getString("password"));
		    	}else{
		    		ch.setTid(rs.getString("tid"));
		    		ch.setTname(rs.getString("tname"));
					ch.setTeacher_introduce(rs.getString("teacher_introduce"));
					ch.setPhoto_address(rs.getString("photo_address"));
					ch.setSex(rs.getString("sex"));
					ch.setPassword(rs.getString("password"));
					ch.setPosition(rs.getString("position"));
		    	}
		   
			
			ch.setTSflag(rs.getInt("rol"));
			list.add(ch);
		    }
		} catch (SQLException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		} finally {
		    SqlConnectionUtils.free(conn, sp, rs);
		}

		return list;
	    
		
	}

	@Override
	public void updateStu(String id, String name, String sex, String phone,
			String qq, String major, String school_year, String possword,
			String chinese_address, String english_address, String graduation,
			String employed, String introduce, String filename) {
		// TODO Auto-generated method stub

		Connection conn = null;
		PreparedStatement ps=null;
		ResultSet rs = null;		
		try {
		    conn = (Connection) SessionFactoryUtils.getDataSource(
			    sessionFactory).getConnection();
		    String sql ="update students set sname=?,student_introduce=?,sex=?,headshot=?,chinese_address=?,english_address=?,phone=?,qq=?,major=?,graduation=?,employed=? where sid =?";
		    ps = conn.prepareStatement(sql);
		    ps.setString(1, name);
		    ps.setString(2, introduce);
		    ps.setString(3, sex);
		    ps.setString(4, filename);
		    ps.setString(5, chinese_address);
		    ps.setString(6, english_address);
		    ps.setString(7, phone);
		    ps.setString(8, qq);
		    ps.setString(9, major);
		    ps.setString(10, graduation);
		    ps.setString(11, employed);
		    ps.setString(12, id);
			ps.executeUpdate();
		} catch (SQLException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		} finally {
		    SqlConnectionUtils.free(conn, ps, rs);
		}
	
		
	}

	@Override
	public void updateTea(String id, String name, String sex, String introduce,
			String filename,String position) {
		// TODO Auto-generated method stub

		Connection conn = null;
		PreparedStatement ps=null;
		ResultSet rs = null;		
		try {
		    conn = (Connection) SessionFactoryUtils.getDataSource(
			    sessionFactory).getConnection();
		    String sql ="update teachers set tname=?,teacher_introduce=?,sex=?,photo_address=?,position=? where tid =?";
		    ps = conn.prepareStatement(sql);
		    ps.setString(1, name);
		    ps.setString(2, introduce);
		    ps.setString(3, sex);
		    ps.setString(4, filename);
		    ps.setString(5, position);
		    ps.setString(6, id);
		    ;
			ps.executeUpdate();
		} catch (SQLException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		} finally {
		    SqlConnectionUtils.free(conn, ps, rs);
		}
	
		
	}
}
