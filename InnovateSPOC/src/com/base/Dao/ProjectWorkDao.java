/**
 * 
 */
package com.base.Dao;

import com.base.Po.workList;

/**
 * @author 鸡毛大大
 *
 */
public interface ProjectWorkDao {

	public workList projectwork(int pageindex, int size, String columnName,
			String orderDir, String searchValue);

	public int increaseWorkInfo(String groupName, String projectName,
			String projectIntroduce, String projectAddress,
			String photoAddress, String workCategory, String express,
			String bestWork);

	public String delInfo(String str);

	public String updateWorkInfo(String gid, String projectName,
			String workCategory, String expression, String bestWork,
			String projectIntroduce); 
  
}
