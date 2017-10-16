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

import com.base.Dao.EmploymentManageDao;
import com.base.Po.EmployeeStudent;
import com.base.Po.employList;
import com.base.Po.employment;
import com.base.Po.groups;
import com.base.Po.students;
import com.base.Po.teachers;
import com.base.Po.userCenter;
import com.base.utils.BaseUtils;
import com.base.utils.SqlConnectionUtils;

@Repository("EmploymentManageDao")

public class EmploymentManageDaoImpl implements EmploymentManageDao {

	@Autowired
	    private SessionFactory sessionFactory;
	
	@Override
	public employList employment(int pageindex, int size, String columnName,
			String orderDir, String searchValue ) {
		
		employList  el = new employList();
		List<employment> list = new ArrayList<employment>();
		int recordsTotal = 0;
		Connection conn = null;
		CallableStatement sp = null;
		ResultSet rs = null;
		 try {
			conn = (Connection) SessionFactoryUtils.getDataSource(
					    sessionFactory).getConnection();
			 sp = (CallableStatement) conn
					    .prepareCall("{CALL innovatespoc.query_employment(?,?,?,?,?,?)}");
			 
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
			    employment ch = new employment();
			    ch.setId(rs.getInt("id"));
			    ch.setSid(rs.getString("sid"));
			    ch.setCompany(rs.getString("company"));
			    ch.setSalary(rs.getString("salary"));
			    ch.setWorkin(rs.getString("workin"));
			    ch.setGraduation_year(rs.getString("graduation_year"));
			    ch.setExcellence(rs.getString("excellence"));
			    list.add(ch);
			    }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
		    SqlConnectionUtils.free(conn, sp, rs);
		}
		 el.setRecordsTotal(recordsTotal);
		 el.setData(list);
		return el;
	}
	
	// 向就业表employment中插入一条数据
	  public int increaseEmpInfo(String stuName,String companyName ,String wage,String work,String graduateYear,String excellence) {
		
		
		int flag=0;
		Connection conn = null;
		PreparedStatement ps=null;
		ResultSet rs = null;
		CallableStatement sp = null;
		try {
		    conn = (Connection) SessionFactoryUtils.getDataSource(
			    sessionFactory).getConnection();
		    sp = (CallableStatement) conn
			    .prepareCall("{call innovatespoc.check_employment(?,?,?,?,?,?,?)}");//待写
		    sp.setString(1, stuName);
			sp.setString(2, companyName);
			sp.setString(3, wage);
			sp.setString(4, work);
			sp.setString(5, graduateYear);
			sp.setString(6, excellence);	  
		    sp.execute();
		    flag=sp.getInt(7);	 
		} catch (SQLException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		} finally {
		    SqlConnectionUtils.free(conn, sp, rs);
		}
		return flag;

	    }
	  
	  //实习基地维护中删除
	    @Override
	    public String delInfo(String str) {
		int flag;
		String message=null;
		Connection conn = null;
		CallableStatement sp = null;
		ResultSet rs = null;
		try {
		    conn = (Connection) SessionFactoryUtils.getDataSource(
			    sessionFactory).getConnection();
		    sp = (CallableStatement) conn
			    .prepareCall("{call innovatespoc.delete_employment(?,?)}");//待写
		    sp.setString(1, str);
		    sp.execute();
		    flag=sp.getInt(2);
		    message=BaseUtils.getException(flag);
		} catch (SQLException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		} finally {
		    SqlConnectionUtils.free(conn, sp, rs);
		}
		return message;

	    }
	    
	  //实习基地维护中修改
		@Override
		public String updateEmpInfo(String sid, String company, String salary,
				String workin, String graduationYear, String excellence) {
			int flag;
			//System.out.println(excellence+"aaaa");
			//System.out.println(sid+"bbbb");
			
			String message=null;
			Connection conn = null;
			CallableStatement sp = null;
			try {
			    conn = (Connection) SessionFactoryUtils.getDataSource(
				    sessionFactory).getConnection();
			    sp = (CallableStatement) conn.prepareCall("{CALL innovatespoc.alter_employment(?,?,?,?,?,?,?)}");//待写
			    sp.setString(1, sid);
			    sp.setString(2, company);
			    sp.setString(3, salary);
			    sp.setString(4, workin);
			    sp.setString(5, graduationYear);
			    sp.setString(6, excellence);
			    
			    sp.execute();
			    flag=sp.getInt(7);
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
		public List<employment> getEmploy() {
			List<employment> list = null;
			Session session=sessionFactory.openSession();		
			String hql="from employment";
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
		public List<students> getStudents() {
			List<students> list = null;
			Session session=sessionFactory.openSession();		
			String hql="from students";
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
		public List<EmployeeStudent> getEmployeeStudent(int gid) {

			Connection conn = null;
			CallableStatement sp = null;
			ResultSet rs = null;
			List<EmployeeStudent> list = new ArrayList<EmployeeStudent>();
			try {
			    conn = (Connection) SessionFactoryUtils.getDataSource(
				    sessionFactory).getConnection();
			    sp = (CallableStatement) conn
				    .prepareCall("{CALL innovatespoc.SelEmployeeStudent(?)}");
			    sp.execute();
			    rs = sp.getResultSet();
			    while (rs.next()) {
			    	EmployeeStudent ch = new EmployeeStudent();
			    	if(rs.getInt("gid") == gid){
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
		 			ch.setGid(rs.getInt("gid"));
		 			ch.setGname(rs.getString("gname"));
		 			ch.setId(rs.getInt("id"));
					ch.setCompany(rs.getString("company"));
					ch.setSalary(rs.getString("salary"));
				    ch.setWorkin(rs.getString("workin"));
				    ch.setGraduation_year(rs.getString("graduation_year"));
				    ch.setExcellence(rs.getString("excellence"));
				    list.add(ch);
			    	}
			    }
			} catch (SQLException e) {
			    // TODO Auto-generated catch block
			    e.printStackTrace();
			} finally {
			    SqlConnectionUtils.free(conn, sp, rs);
			}

			return list;
		    
			
		}
		
		
	}
	
	
		

