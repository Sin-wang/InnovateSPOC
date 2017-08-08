/**
 * 
 */
package com.base.Dao;

import com.base.Po.personnelList;


/**
 * @author 鸡毛大大
 *
 */
public interface ProjectPersonDao {

	personnelList projectPerson(Integer pageindex, Integer size,
			String columnName, String orderDir, String searchValue);

	int increasePersonInfo(String proName, String stuName, String participants,
			String header);

	String delInfo(String str);

	String updatePersonInfo(int id, String projectName, String stuName,
			String participants, String header);  
 
	
}
