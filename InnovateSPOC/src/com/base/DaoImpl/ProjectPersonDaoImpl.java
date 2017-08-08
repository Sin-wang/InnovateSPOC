/**
 * 
 */
package com.base.DaoImpl;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.SessionFactoryUtils;
import org.springframework.stereotype.Repository;

import com.base.Dao.ProjectPersonDao;
import com.base.Po.personnelList;
import com.base.Po.project_personnel;
import com.base.utils.BaseUtils;
import com.base.utils.SqlConnectionUtils;

/**
 * @author 鸡毛大大
 *
 */

@Repository("ProjectPersonDao")

public class ProjectPersonDaoImpl implements ProjectPersonDao {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	@Override
	public personnelList projectPerson(Integer pageindex, Integer size,
			String columnName, String orderDir, String searchValue) {
		personnelList  pl = new personnelList();
		List<project_personnel> list = new ArrayList<project_personnel>();
		int recordsTotal = 0;
		Connection conn = null;
		CallableStatement sp = null;
		ResultSet rs = null;
		 try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
					    sessionFactory).getConnection();
			 sp = (CallableStatement) conn
					    .prepareCall("{CALL innovatespoc.query_ProjectPersonnel(?,?,?,?,?,?)}");
			 
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
			    project_personnel ch = new project_personnel();
			    ch.setId(rs.getInt("id"));
			    ch.setPid(rs.getString("project_name"));
			    ch.setSid(rs.getString("sname"));
			    ch.setParticipants(rs.getString("participants"));
			    ch.setHeader(rs.getString("header"));
			    list.add(ch);
			    }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
		    SqlConnectionUtils.free(conn, sp, rs);
		}
		 pl.setRecordsTotal(recordsTotal);
		 pl.setData(list);
		return pl;
	}

	@Override
	public int increasePersonInfo(String proName, String stuName,
			String participants, String header) {
		// TODO Auto-generated method stub
		int flag=0;
		Connection conn = null;
		ResultSet rs = null;
		CallableStatement sp = null;
		try {
		    conn = (Connection) SessionFactoryUtils.getDataSource(
			    sessionFactory).getConnection();
		    sp = (CallableStatement) conn
			    .prepareCall("{call innovatespoc.check_ProjectPersonnel(?,?,?,?,?)}");//待写
		    sp.setString(1, proName);
			
			sp.setString(2, participants);
			sp.setString(3, header);
			sp.setString(4, stuName);
		    sp.execute();
		    flag=sp.getInt(5);	 
		} catch (SQLException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		} finally {
		    SqlConnectionUtils.free(conn, sp, rs);
		}
		System.out.println(flag);
		return flag;
	}

	@Override
	public String delInfo(String str) {
		System.out.println(str);
		int flag;
		String message=null;
		Connection conn = null;
		CallableStatement sp = null;
		ResultSet rs = null;
		try {
		    conn = (Connection) SessionFactoryUtils.getDataSource(
			    sessionFactory).getConnection();
		    sp = (CallableStatement) conn
			    .prepareCall("{call innovatespoc.delete_ProjectPersonnel(?,?)}");//待写
		    sp.setString(1, str);
		    sp.execute();
		    flag=sp.getInt(2);
		    message=BaseUtils.getException(flag);
		    System.out.println(message);
		} catch (SQLException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		} finally {
		    SqlConnectionUtils.free(conn, sp, rs);
		}
	return message;
	}

	@Override
	public String updatePersonInfo(int id, String projectName, String stuName,
			String participants, String header) {
		// TODO Auto-generated method stub

		int flag;
		System.out.println(id+"||"+projectName+"||"+stuName+"||"+participants+"||"+header);
		String message=null;
		Connection conn = null;
		CallableStatement sp = null;
		try {
		    conn = (Connection) SessionFactoryUtils.getDataSource(
			    sessionFactory).getConnection();
		    sp = (CallableStatement) conn.prepareCall("{CALL innovatespoc.alter_ProjectPersonnel(?,?,?,?,?,?)}");//待写
		    sp.setInt(1, id);
		    sp.setString(2, projectName);
		    sp.setString(3, participants);
		    sp.setString(4, header);
		    sp.setString(5, stuName);
		    sp.execute();
		    flag=sp.getInt(6);
		    message=BaseUtils.getException(flag);
		    System.out.println(message);
		} catch (SQLException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		} finally {
		    SqlConnectionUtils.free(conn, sp, null);
		}
		return message;
		
	}


	
	
}
