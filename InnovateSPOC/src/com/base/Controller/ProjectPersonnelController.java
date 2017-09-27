package com.base.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.base.Po.personnelList;
import com.base.Po.project_personnel;
import com.base.Service.ProjectPersonService;
 


@Controller("ProjectPersonnelController")
@RequestMapping("/jsp")
//就业信息管理控制层
public class ProjectPersonnelController {
		@Autowired
	  private ProjectPersonService ProjectPersonService;
	
	  
	 //获取数据信息
	@RequestMapping("/sendPersoninfo.do")
	 public String sendPersoninfo(HttpServletRequest request,
			    HttpServletResponse response, ModelMap map) {
					
		Integer size = Integer.parseInt(request.getParameter("length"));
		Integer startIndex = Integer.parseInt(request.getParameter("start"));
		Integer draw = Integer.parseInt(request.getParameter("draw"));
		int order = Integer.valueOf(request.getParameter("order[0][column]"));
		String orderDir = request.getParameter("order[0][dir]");
		String searchValue = request.getParameter("search[value]");
		if (searchValue.equals("")) {
		    searchValue = null;
		}
		Integer pageindex = (startIndex / size + 1);
		int recordsTotal = 0;
		List<project_personnel> list = new ArrayList<project_personnel>();
		
		personnelList str =  null;
		str = ProjectPersonService.projectPerson(pageindex, size, order, orderDir,searchValue);

		list = str.getData();
		recordsTotal = str.getRecordsTotal();
		JSONObject getObj = new JSONObject();
		getObj.put("draw", draw);
		getObj.put("recordsFiltered",recordsTotal);
		getObj.put("recordsTotal", recordsTotal);
		getObj.put("data", list);
		response.setContentType("text/html;charset=UTF-8");

		try {
		    response.getWriter().print(getObj.toString());
		} catch (IOException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}
		
		
		
		return null;
		
		
	}
	
	// 增加就业信息记录
    @RequestMapping("/increasePersonInfo.do")
    public String increasePersonInfo(HttpServletRequest request,
    	    HttpServletResponse response, ModelMap map) {
    	
    		String proName = request.getParameter("proName");
    		String stuName = request.getParameter("stuName");
    		String participants = request.getParameter("participants");
    		String header = request.getParameter("header");
    		System.out.println(proName+"||"+stuName+"||"+participants+"||"+header);
    		int message=ProjectPersonService.increasePersonInfo(proName,stuName,participants,header);
    		String flag = null;
    		if(message == 500 ){
    			flag = "fail";
    		}else{
    			flag = "success";
    		}
    		request.setAttribute("flag", flag);
    		response.setContentType("text/html;charset=UTF-8");

    	return "projectPersonnel";
        }
    
    //删除就业信息记录(批量)
    @RequestMapping("/delPersoninfo.do")
    public String delPersoninfo(HttpServletRequest request,
	    HttpServletResponse response, ModelMap map) {
	String str = request.getParameter("recordstr");
	
	String message=ProjectPersonService.delInfo(str);
	if(message.equals("success")){
	    message="操作成功";
	}else if(message.equals("fail")){
	    message="操作失败";
	}
	JSONObject getObj = new JSONObject();
	getObj.put("flag", message);

	response.setContentType("text/html;charset=UTF-8");

	try {
	    response.getWriter().print(getObj.toString());
	} catch (IOException e) {
	    // TODO Auto-generated catch block
	    e.printStackTrace();
	}

	return null;
    }
    
 // 修改信息
    @RequestMapping("/updatePersonInfo.do")
    public String updatePersonInfo(HttpServletRequest request,
	    HttpServletResponse response, ModelMap map) {
    	
	int Id =Integer.parseInt(request.getParameter("Id"));
	String ProjectName=request.getParameter("ProjectName");
	if(ProjectName.equals("")){
		ProjectName=null;
	}
	String StuName=  request.getParameter("StuName");
	if(StuName.equals("")){
		StuName=null;
	}
	String Participants =request.getParameter("Participants");
	if(Participants.equals("")){
		Participants=null;
	}
	String Header =request.getParameter("Header");
	if(Header.equals("")){
		Header=null;
	}
	String message = ProjectPersonService.updatePersonInfo(Id,ProjectName,StuName,Participants,Header);
	if(message=="success"){
	    message="操作成功";
	}else if(message=="fail"){
	    message="操作失败";
	}
	JSONObject getObj = new JSONObject();
	getObj.put("flag", message);

	response.setContentType("text/html;charset=UTF-8");

	try {
	    response.getWriter().print(getObj.toString());
	} catch (IOException e) {
	    // TODO Auto-generated catch block
	    e.printStackTrace();
	}

	return "projectPersonnel";
    }
}
