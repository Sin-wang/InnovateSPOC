package com.base.Dao;

import com.base.Po.Group_list;

public interface GroupDao {

	public Group_list query_group(Integer size, Integer pageindex,String columnName, String orderDir, String searchValue);

	public int addGroups(String gname);
	
	public String deleteGroup(String str);

	public void updateGroup(int gid, String gname);
}
