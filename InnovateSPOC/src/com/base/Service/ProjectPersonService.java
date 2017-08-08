/**
 * 
 */
package com.base.Service;

import com.base.Po.personnelList;




/**
 * @author 鸡毛大大
 *
 */
public interface ProjectPersonService {

	personnelList projectPerson(Integer pageindex, Integer size, int order,
			String orderDir, String searchValue);

	int increasePersonInfo(String proName, String stuName, String participants,
			String header);

	String delInfo(String str);

	String updatePersonInfo(int id, String projectName, String stuName,
			String participants, String header);  


  
  
}
