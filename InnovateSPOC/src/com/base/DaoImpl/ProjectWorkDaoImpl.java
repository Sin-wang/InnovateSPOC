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

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.SessionFactoryUtils;
import org.springframework.stereotype.Repository;

import com.base.Dao.ProjectWorkDao;
import com.base.Po.WorkInfo;
import com.base.Po.employment;
import com.base.Po.groups;
import com.base.Po.project_personnel;
import com.base.Po.project_work;
import com.base.Po.workList;
import com.base.Po.work_category;
import com.base.utils.BaseUtils;
import com.base.utils.SqlConnectionUtils;

/**
 * @author 鸡毛大大
 *
 */

@Repository("ProjectWorkDao")

public class ProjectWorkDaoImpl implements ProjectWorkDao {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	@Override
	public workList projectwork(int pageindex, int size,
			String columnName, String orderDir, String searchValue) {
		workList  wl = new workList();
		List<project_work> list = new ArrayList<project_work>();
		int recordsTotal = 0;
		Connection conn = null;
		CallableStatement sp = null;
		ResultSet rs = null;
		 try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
					    sessionFactory).getConnection();
			 sp = (CallableStatement) conn
					    .prepareCall("{CALL innovatespoc.query_ProjectWork(?,?,?,?,?,?)}");
			 
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
			    project_work ch = new project_work();
			    ch.setPid(rs.getInt("pid"));
			    ch.setGid(rs.getString("gname"));
			    ch.setProject_name(rs.getString("project_name"));
			    ch.setProject_introduce(rs.getString("project_introduce"));
			    ch.setProject_address(rs.getString("project_address"));
			    ch.setPhoto_address(rs.getString("photo_address"));
			    ch.setWid(rs.getString("work_name"));
			    ch.setExpression(rs.getString("expression"));
			    ch.setBest_work(rs.getString("best_work"));
			    list.add(ch);
			    }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
		    SqlConnectionUtils.free(conn, sp, rs);
		}
		 wl.setRecordsTotal(recordsTotal);
		 wl.setData(list);
		return wl;
	}

	@Override
	public int increaseWorkInfo(String groupName, String projectName,
			String projectIntroduce, String projectAddress,
			String photoAddress, String workCategory, String express,
			String bestWork) {
		// TODO Auto-generated method stub
		int flag=0;
		Connection conn = null;
		ResultSet rs = null;
		CallableStatement sp = null;
		try {
		    conn = (Connection) SessionFactoryUtils.getDataSource(
			    sessionFactory).getConnection();
		    sp = (CallableStatement) conn
			    .prepareCall("{call innovatespoc.check_ProjectWork(?,?,?,?,?,?,?,?,?)}");//待写
		    sp.setString(1, groupName);
			sp.setString(2, projectName);
			sp.setString(3, projectIntroduce);
			sp.setString(4, projectAddress);
			sp.setString(5, photoAddress);
			sp.setString(6, workCategory);
			sp.setString(7, express);	
			sp.setString(8, bestWork);	
		    sp.execute();
		    flag=sp.getInt(9);	 
		} catch (SQLException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		} finally {
		    SqlConnectionUtils.free(conn, sp, rs);
		}
		//System.out.println(groupName+"||"+projectName+"||"+projectIntroduce+"||"+projectAddress+"||"+photoAddress+"||"+workCategory+"||"+express+"||"+bestWork);
		//System.out.println(flag);
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
			    .prepareCall("{call innovatespoc.delete_ProjectWork(?,?)}");//待写
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
	public String updateWorkInfo(int pid,String gid, String projectName,
			String workCategory, String expression, String bestWork,
			String projectIntroduce,String photo,String ProjectAddress) {
		// TODO Auto-generated method stub

		int flag;
		System.out.println(ProjectAddress+"aaaa");
		//System.out.println(sid+"bbbb");
		
		String message=null;
		Connection conn = null;
		CallableStatement sp = null;
		try {
		    conn = (Connection) SessionFactoryUtils.getDataSource(
			    sessionFactory).getConnection();
		    sp = (CallableStatement) conn.prepareCall("{CALL innovatespoc.alter_ProjectWork(?,?,?,?,?,?,?,?,?,?)}");//待写
		    sp.setInt(1, pid);
		    sp.setString(2, gid);
		    sp.setString(3, projectName);
		    sp.setString(4, projectIntroduce);
		    sp.setString(5, workCategory);
		    sp.setString(6, expression);
		    sp.setString(7, bestWork);
		    sp.setString(8, photo);
		    sp.setString(9,	ProjectAddress);
		    
		    sp.execute();
		    flag=sp.getInt(10);
		  // System.out.println(flag);
		    message=BaseUtils.getException(flag);
		} catch (SQLException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		} finally {
		    SqlConnectionUtils.free(conn, sp, null);
		}
		return message;
	}

	@Override
	public List<project_work> getWork() {
		List<project_work> list = null;
		Session session=sessionFactory.openSession();		
		String hql="from project_work";
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
	public List<work_category> getCategory() {
		List<work_category> list = null;
		Session session=sessionFactory.openSession();		
		String hql="from work_category";
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
	public List<groups> getGroup() {
		List<groups> list = null;
		Session session=sessionFactory.openSession();		
		String hql="from groups";
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
	public List<project_personnel> getPersonnel() {
		List<project_personnel> list = null;
		Session session=sessionFactory.openSession();		
		String hql="from project_personnel";
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
	public List<project_personnel> getPersonnel(String sid) {
		List<project_personnel> list = null;
		Session session=sessionFactory.openSession();		
		String hql="from project_personnel where sid=?";
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
	public List<WorkInfo> getAllWorkInfo() {
		List<WorkInfo> list = new ArrayList<WorkInfo>();
		Connection conn = null;
		CallableStatement sp = null;
		ResultSet rs = null;
		 try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
					    sessionFactory).getConnection();
			 sp = (CallableStatement) conn
					    .prepareCall("{CALL innovatespoc.`select_WorkInfo`(?)}");
			 
			    sp.execute();
			    rs = sp.getResultSet();
			    
			    while (rs.next()) {
			    WorkInfo ch = new WorkInfo();
			    ch.setPid(rs.getInt("pid"));
			    ch.setGid(rs.getString("gid"));
			    ch.setGname(rs.getString("gname"));
			    ch.setProject_name(rs.getString("project_name"));
			    ch.setProject_introduce(rs.getString("project_introduce"));
			    ch.setProject_address(rs.getString("project_address"));
			    ch.setPhoto_address(rs.getString("photo_address"));
			    ch.setWid(rs.getString("work_name"));
			    ch.setExpression(rs.getString("expression"));
			    ch.setBest_work(rs.getString("best_work"));
			    ch.setSid(rs.getString("sid"));
			    ch.setSname(rs.getString("sname"));
			    ch.setParticipants(rs.getString("participants"));
			    ch.setHeader(rs.getString("header"));
			    ch.setWork_name(rs.getString("work_name"));
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
	public List<WorkInfo> getAllWorkInfo(String sid) {
		List<WorkInfo> list = new ArrayList<WorkInfo>();
		Connection conn = null;
		CallableStatement sp = null;
		ResultSet rs = null;
		 try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
					    sessionFactory).getConnection();
			 sp = (CallableStatement) conn
					    .prepareCall("{CALL innovatespoc.`select_SidWorkInfo`(?,?)}");
			 	sp.setString(1, sid);
			    sp.execute();
			    rs = sp.getResultSet();
			    
			    while (rs.next()) {
			    WorkInfo ch = new WorkInfo();
			    ch.setPid(rs.getInt("pid"));
			    ch.setGid(rs.getString("gname"));
			    ch.setProject_name(rs.getString("project_name"));
			    ch.setProject_introduce(rs.getString("project_introduce"));
			    ch.setProject_address(rs.getString("project_address"));
			    ch.setPhoto_address(rs.getString("photo_address"));
			    ch.setWid(rs.getString("work_name"));
			    ch.setExpression(rs.getString("expression"));
			    ch.setBest_work(rs.getString("best_work"));
			    
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
	public List<project_work> getWorkInfoBypid(String gid) {
		List<project_work> list = null;
		Session session=sessionFactory.openSession();		
		String hql="from project_work where gid=?";
		try {
	    	 Query query=session.createQuery(hql);
	    	 query.setString(0, gid);
	    	 list=query.list();
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			session.close();
		}
		return list;
	}



}
