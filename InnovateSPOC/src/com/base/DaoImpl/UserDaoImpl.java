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

import com.base.Dao.UserDao;
import com.base.Po.User;
import com.base.Po.userList;
import com.base.utils.BaseUtils;
import com.base.utils.SqlConnectionUtils;

@Repository("UserDao")
public class UserDaoImpl implements UserDao {

    
    @Autowired
    private SessionFactory sessionFactory;
    @Override
    public boolean login(String username, String password) {
	Session session = sessionFactory.openSession();
	String hql = "from User where username=? and password=?";
	boolean flag = false;

	try {
	    Query query = session.createQuery(hql);
	    query.setString(0, username);
	    query.setString(1, password);
	    User ui = (User) query.uniqueResult();
	    if (ui != null) {
		flag = true;
	    }

	} catch (Exception e) {
	    System.out.println(e);
	} finally {
	    session.close();
	}
	return flag;
    }
    
    //增加用户
	@Override
	public int addUser(String id,String username, String password) {
		// TODO Auto-generated method stub
		int flag=0;
		Connection conn = null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
				    sessionFactory).getConnection();
			String sql = "insert into user values(?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, username);
			pstmt.setString(3, password);
			pstmt.executeUpdate();
			flag = 1;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			SqlConnectionUtils.free(conn, pstmt, rs);
		}
		return flag;
	}
	
	//展示用户
	@Override
	public userList query_user(Integer size, Integer pageindex,
			String columnName, String orderDir, String searchValue) {
		// TODO Auto-generated method stub
		int recordsTotal = 0;
		Connection conn = null;
		CallableStatement sp = null;
		ResultSet rs = null;
		List<User> list = new ArrayList<User>();
		try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
					sessionFactory).getConnection();
			sp = (CallableStatement) conn
					.prepareCall("{call innovatespoc.query_user(?,?,?,?,?,?)}");
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
				User ch = new User();
				ch.setUid(rs.getString("id"));
				ch.setUsername(rs.getString("name"));
				ch.setPassword(rs.getString("password"));
				list.add(ch);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			SqlConnectionUtils.free(conn, sp, rs);
		}
		userList ck = new userList();
		ck.setRecordsTotal(recordsTotal);
		ck.setData(list);
		return ck;
	}
	
	//更新用户
	@Override
	public void updateUser(String id, String password) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
				    sessionFactory).getConnection();
			String sql = "update user set password=? where uid =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, password);
			pstmt.setString(2, id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			SqlConnectionUtils.free(conn, pstmt, rs);
		}
	}
	
	//删除用户
	@Override
	public String delUser(String str) {
		// TODO Auto-generated method stub
		int flag = 0;
		String message = null;
		Connection conn = null;
		CallableStatement sp = null;
		try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
					sessionFactory).getConnection();
			sp = (CallableStatement) conn
					.prepareCall("{CALL innovatespoc.delete_user(?,?)}");
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
