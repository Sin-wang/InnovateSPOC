/**
 * 
 */
package com.base.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.Dao.ProjectPersonDao;
import com.base.Po.personnelList;
import com.base.Service.ProjectPersonService;

/**
 * @author 鸡毛大大
 *
 */
@Service("ProjectPersonService")

public class ProjectPersonServiceImpl implements ProjectPersonService {


	@Autowired
	private ProjectPersonDao  persondao;
	
	@Override
	public personnelList projectPerson(Integer pageindex, Integer size,
			int order, String orderDir, String searchValue) {
		// TODO Auto-generated method stub
		String columnName = "";
		if(order == 0){
			columnName = "id";
		}else if (order == 1) {
		    columnName = "pid";
		} else if (order == 2) {
		    columnName = "sid";
		} else if (order == 3) {
		    columnName = "participants";
		} else if (order == 4) {
		    columnName = "header";
		}
		personnelList list =  persondao.projectPerson(pageindex, size,columnName,orderDir,searchValue );
		return list;
	}

	@Override
	public int increasePersonInfo(String proName, String stuName,
			String participants, String header) {
		// TODO Auto-generated method stub
		int message = persondao.increasePersonInfo(proName,stuName,participants,header);
		return message;
	}

	@Override
	public String delInfo(String str) {
		// TODO Auto-generated method stub
		String message=persondao.delInfo(str);
		return message;
	}

	@Override
	public String updatePersonInfo(int id, String projectName, String stuName,
			String participants, String header) {
		// TODO Auto-generated method stub
		String message=persondao.updatePersonInfo(id,projectName,stuName,participants,header);
		return message;
	}

	
}
