package com.base.DaoImpl;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.SessionFactoryUtils;
import org.springframework.stereotype.Repository;

import com.base.Dao.AttenceDao;
import com.base.Po.excel;
import com.base.Po.groups;
import com.base.utils.SqlConnectionUtils;

@Repository("AttenceDao")
public class AttenceDaoImpl implements AttenceDao{

	@Autowired
    private SessionFactory sessionFactory;
	
	@Override
	public List<excel> getAttenceData() {
		List<excel> list = null;
		Session session=sessionFactory.openSession();		
		String hql="from excel";
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
	public int judge_insert_attence(String name, String attenceTime) {
		// TODO Auto-generated method stub
		Connection conn = null;
		CallableStatement sp = null;	
		int flag = 0;
		try {
		    conn = (Connection) SessionFactoryUtils.getDataSource(
			    sessionFactory).getConnection();
		    sp = (CallableStatement) conn
			    .prepareCall("{call innovatespoc.import_excel(?,?,?)}");
		    sp.setString(1, name);
		    sp.setString(2, attenceTime);
		    sp.registerOutParameter(3, java.sql.Types.INTEGER);
		    sp.execute();
		    flag = sp.getInt(3);
		} catch (SQLException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		} finally {
		    SqlConnectionUtils.free(conn, sp, null);
		}
		return flag;
	}

	
}
