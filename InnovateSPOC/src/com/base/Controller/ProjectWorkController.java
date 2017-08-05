package com.base.Controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.base.Po.project_work;
import com.base.Po.workList;
import com.base.Service.ProjectWorkService;
import com.base.utils.ExcelReport;
 


@Controller("ProjectWorkController")
@RequestMapping("/jsp")
//就业信息管理控制层
public class ProjectWorkController {
		@Autowired
	  private ProjectWorkService ProjectWorkService;
	
	  
	 //获取数据信息
	@RequestMapping("/sendWorkinfo.do")
	 public String sendEmployinfo(HttpServletRequest request,
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
		List<project_work> list = new ArrayList<project_work>();
		
		workList str =  null;
		str = ProjectWorkService.projectwork(pageindex, size, order, orderDir,searchValue);

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
    @RequestMapping("/increaseWorkInfo.do")
    public String increaseEmpInfo(HttpServletRequest request,
    	    HttpServletResponse response, ModelMap map) {
    	
    		String groupName = request.getParameter("groupName");
    		String projectName = request.getParameter("projectName");
    		String projectIntroduce = request.getParameter("projectIntroduce");
    		//String projectAddress = request.getParameter("projectAddress");
    		//String photoAddress = request.getParameter("photoAddress");
    		String workCategory = request.getParameter("workCategory");
    		String express = request.getParameter("express");
    		String bestWork = request.getParameter("bestWork");
    		
    		// 项目作品地址
    		// 上传文件（图片），将文件存入服务器指定路径下，并获得文件的相对路径
    		String path = null;
    		String projectAddress = null;
    		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
    		// 得到上传的文件
    		MultipartFile mFile = multipartRequest.getFile("projectAddress");// 申请材料保存地址
    		if (!mFile.isEmpty()) {
    		    // 得到上传服务器的路径
    		    path = ExcelReport.getWebRootUrl(request, "/material/");
    		    // 得到上传的文件的文件名
    		    String fileName = mFile.getOriginalFilename();
    		    String fileType = fileName.substring(fileName
    			    .lastIndexOf("."));
    		    projectAddress = new Date().getTime() + fileType;
    		    InputStream inputStream = null;
    		    try {
    			inputStream = mFile.getInputStream();
    		    } catch (IOException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		    }
    		    byte[] b = new byte[1048576];
    		    int length = 0;
    		    try {
    			length = inputStream.read(b);
    		    } catch (IOException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		    }
    		    path += projectAddress;
    		    // 文件流写到服务器端
    		    try {
    			FileOutputStream outputStream = new FileOutputStream(
    				path);
    			outputStream.write(b, 0, length);
    			inputStream.close();
    			outputStream.close();
    		    } catch (IOException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		    }
    		    projectAddress = "../material/" + projectAddress;
    		} else {
    			projectAddress = null;
    		}
    		
    		// 项目截图地址
    		// 上传文件（图片），将文件存入服务器指定路径下，并获得文件的相对路径
    		String path2 = null;
    		String photoAddress = null;
    		MultipartHttpServletRequest multipartRequest2 = (MultipartHttpServletRequest) request;
    		// 得到上传的文件
    		MultipartFile mFile2 = multipartRequest2.getFile("photoAddress");// 申请材料保存地址
    		//MultipartFile mFile2 = multipartRequest.getFile("material_path2");// 申请材料保存地址
    		if (!mFile2.isEmpty()) {
    		    // 得到上传服务器的路径
    		    path2 = ExcelReport.getWebRootUrl(request, "/material/");
    		    // 得到上传的文件的文件名
    		    String fileName = mFile2.getOriginalFilename();
    		    String fileType = fileName.substring(fileName
    			    .lastIndexOf("."));
    		    photoAddress = new Date().getTime() + fileType;
    		    InputStream inputStream = null;
    		    try {
    			inputStream = mFile2.getInputStream();
    		    } catch (IOException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		    }
    		    byte[] b = new byte[1048576];
    		    int length = 0;
    		    try {
    			length = inputStream.read(b);
    		    } catch (IOException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		    }
    		    path2 += photoAddress;
    		    // 文件流写到服务器端
    		    try {
    			FileOutputStream outputStream = new FileOutputStream(
    				path2);
    			outputStream.write(b, 0, length);
    			inputStream.close();
    			outputStream.close();
    		    } catch (IOException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		    }
    		    photoAddress = "../material/" + photoAddress;
    		} else {
    			photoAddress = null;
    		}
    		//System.out.println(groupName+"||"+projectName+"||"+projectIntroduce+"||"+projectAddress+"||"+photoAddress+"||"+workCategory+"||"+express+"||"+bestWork);
    		int message=ProjectWorkService.increaseWorkInfo(groupName,projectName,projectIntroduce,projectAddress,photoAddress,workCategory,express,bestWork);
    		request.setAttribute("flag", message);
    		response.setContentType("text/html;charset=UTF-8");

    	return "projectWork";
        }
   
    //删除就业信息记录(批量)
    @RequestMapping("/delWorkinfo.do")
    public String delWorkinfo(HttpServletRequest request,
	    HttpServletResponse response, ModelMap map) {
	String str = request.getParameter("recordstr");
	
	String message=ProjectWorkService.delInfo(str);
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
     
 // 修改实习基地信息
    @RequestMapping("/updateWorkInfo.do")
    public String updateWorkInfo(HttpServletRequest request,
	    HttpServletResponse response, ModelMap map) {
	String Gid = request.getParameter("Gid");
	String ProjectName=request.getParameter("ProjectName");
	if(ProjectName.equals("")){
		ProjectName=null;
	}
	System.out.println(ProjectName+"ProjectName");
	String WorkCategory=  request.getParameter("WorkCategory");
	if(WorkCategory.equals("")){
		WorkCategory=null;
	}
	String Expression =request.getParameter("Expression");
	if(Expression.equals("")){
		Expression=null;
	}
	String BestWork =request.getParameter("BestWork");
	if(BestWork.equals("")){
		BestWork=null;
	}
	String ProjectIntroduce =request.getParameter("ProjectIntroduce");
	if(ProjectIntroduce.equals("")){
		ProjectIntroduce=null;
	}
	System.out.println(Gid+"||"+ProjectName+"||"+WorkCategory+"||"+Expression+"||"+BestWork+"||"+ProjectIntroduce);
	String message = ProjectWorkService.updateWorkInfo(Gid,ProjectName,WorkCategory,Expression,BestWork,ProjectIntroduce);
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

	return "projectWork";
    }
}
