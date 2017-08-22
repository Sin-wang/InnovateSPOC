package com.base.Service;

import com.base.Po.Group_list;

public interface GroupSevice {
	
	public Group_list query_group(Integer size, Integer pageindex,
			int order, String orderDir, String searchValue);
	
	public int addGroups(String gname);
	
	public String deleteGroup(String str);
	
	public void updataGroup(int gid,String gname);
}
