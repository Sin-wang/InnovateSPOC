package com.base.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.Dao.GroupDao;
import com.base.Po.Group_list;
import com.base.Service.GroupSevice;
@Service("GroupSevice")
public class GroupServicelmpl implements GroupSevice{

	@Autowired
	private GroupDao groupDao;
	

	@Override
	public Group_list query_group(Integer size, Integer pageindex, int order,
			String orderDir, String searchValue) {
		// TODO Auto-generated method stub
		String columnName = "";
		if (order == 0) {
		    columnName = "id";
		} else if (order == 1) {
		    columnName = "gid";
		} else if (order == 2) {
		    columnName = "gname";
		}else if(order==3){
			columnName="uid";
		}else if(order==4){
			columnName="uname";
		}
		Group_list list=groupDao.query_group(size, pageindex, columnName, orderDir, searchValue);
		return list;
	}


	@Override
	public void updataGroup(String sid, String sname, int gid, String gname) {
		// TODO Auto-generated method stub
		groupDao.updateGroup(sid, sname, gid, gname);
	}

}
