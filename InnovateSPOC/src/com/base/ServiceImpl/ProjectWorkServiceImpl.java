package com.base.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.Dao.ProjectWorkDao;
import com.base.Po.workList;
import com.base.Service.ProjectWorkService;

@Service("ProjectWorkService")

public class ProjectWorkServiceImpl implements ProjectWorkService {
	
	@Autowired
	private ProjectWorkDao  workdao;
	
	@Override
	public workList projectwork(int pageindex, int size, int order,
			String orderDir, String searchValue) {
		String columnName = "";
		if(order == 0){
			columnName = "pid";
		}else if (order == 1) {
		    columnName = "gid";
		} else if (order == 2) {
		    columnName = "project_name";
		} else if (order == 3) {
		    columnName = "wid";
		} else if (order == 4) {
		    columnName = "best_work";
		}
		workList list =  workdao.projectwork(pageindex, size,columnName,orderDir,searchValue );
		
		return list;
		
		
	}

	@Override
	public int increaseWorkInfo(String groupName, String projectName,
			String projectIntroduce, String projectAddress,
			String photoAddress, String workCategory, String express,
			String bestWork) {
		// TODO Auto-generated method stub
		int message = workdao.increaseWorkInfo(groupName,projectName,projectIntroduce,projectAddress,photoAddress,workCategory,express,bestWork);
		return message;
	}

	@Override
	public String delInfo(String str) {
		// TODO Auto-generated method stub
		String message=workdao.delInfo(str);
		return message;
	}

	@Override
	public String updateWorkInfo(String gid, String projectName,
			String workCategory, String expression, String bestWork,
			String projectIntroduce) {
		// TODO Auto-generated method stub
		String message=workdao.updateWorkInfo(gid,projectName,workCategory,expression,bestWork,projectIntroduce);
		return message;
	}

}
