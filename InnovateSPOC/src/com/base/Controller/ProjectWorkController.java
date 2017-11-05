package com.base.Controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.base.Po.WorkInfo;
import com.base.Po.groups;
import com.base.Po.project_personnel;
import com.base.Po.project_work;
import com.base.Po.workList;
import com.base.Po.work_category;
import com.base.Service.ProjectWorkService;
import com.base.utils.CookieUtils;
import com.base.utils.ExcelReport;
 


@Controller("ProjectWorkController")
@RequestMapping("/jsp")
//就业信息管理控制层
public class ProjectWorkController {
		@Autowired
	  private ProjectWorkService ProjectWorkService;
	
	  
	 //获取数据信息
	@RequestMapping("/sendWorkinfo.do")
	 public String sendWorkinfo(HttpServletRequest request,
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
    public String increaseWorkInfo(HttpServletRequest request,
    	    HttpServletResponse response, ModelMap map) {
    		System.out.println(request.getParameter("groupName")+"aaaa");
    		String groupName = request.getParameter("groupName");
    		
    		String projectName = request.getParameter("projectName");
    		String projectIntroduce = request.getParameter("projectIntroduce");
    		String projectAddress = request.getParameter("projectAddress");
    		//String photoAddress = request.getParameter("photoAddress");
    		String workCategory = request.getParameter("workCategory");
    		String express = request.getParameter("express");
    		String bestWork = request.getParameter("bestWork");
    		
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
				
				// path2 = request.getSession().getServletContext().getRealPath("/imgdraw/");
    		    path2 = ExcelReport.getWebRootUrl(request, "/imgdraw/");
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
    		    path2 += "/"+photoAddress;
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
    		    photoAddress = "../imgdraw/" + photoAddress;
    		} else {
    			photoAddress = null;
    		}
    		System.out.println(groupName+"||"+projectName+"||"+projectIntroduce+"||"+projectAddress+"||"+photoAddress+"||"+workCategory+"||"+express+"||"+bestWork);
    		int message=ProjectWorkService.increaseWorkInfo(groupName,projectName,projectIntroduce,projectAddress,photoAddress,workCategory,express,bestWork);
    		String flag = null;
    		if(message == 500 ){
    			flag = "fail";
    		}else{
    			flag = "success";
    		}
    		request.setAttribute("flag", flag);
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
	    HttpServletResponse response, ModelMap map) throws IOException {
	int Pid =Integer.parseInt(request.getParameter("Pid"));
	String Gid=request.getParameter("Gid");
	String picture=request.getParameter("picture");
	String ProjectName=request.getParameter("ProjectName");
	String ProjectAddress = request.getParameter("ProjectAddress");
	if(ProjectAddress.equals("")){
		ProjectAddress=null;
	}
	if(ProjectName.equals("")){
		ProjectName=null;
	}
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
	
	String photo = picture;
	//System.out.println(photo+"dddddddd");
	//System.out.println(picture);
	// 上传文件（图片），将文件存入服务器指定路径下，并获得文件的相对路径
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
			// 得到上传的文件
			MultipartFile mFile2 = multipartRequest.getFile("img");
			// 得到上传服务器的路径
			
			 /* String path = request.getSession().getServletContext()
			  .getRealPath("/imgdraw/");*/
			String path2 = ExcelReport.getWebRootUrl(request, "/imgdraw/");

			// CookieUtils.addCookie("image", filename, response);		
			if (!mFile2.isEmpty()) {
			    // 先删除原有的图像
			    String deleteFile = picture;
			   // System.out.println(deleteFile+"sssss");
			    if(deleteFile == null || deleteFile == ""||deleteFile.equals("null")  ){
					deleteFile = "../images/big.jpg";
				}
			    deleteFile = deleteFile.substring(deleteFile
				    .lastIndexOf("/"));
			    File tempFile = new File(path2 + deleteFile);
			    if (tempFile.isFile() && tempFile.exists()) {
				tempFile.delete();
			    }
			    // 得到上传的文件的文件名
			    String fileName = mFile2.getOriginalFilename();
			    String fileType = fileName.substring(fileName
				    .lastIndexOf("."));
			    photo = new Date().getTime() + fileType;
			    InputStream inputStream = mFile2.getInputStream();
			    byte[] b = new byte[1048576];
			    int length = inputStream.read(b);
			    path2 += "/" + photo;
			    // 文件流写到服务器端
			    FileOutputStream outputStream = new FileOutputStream(path2);
			    outputStream.write(b, 0, length);
			    inputStream.close();
			    outputStream.close();
			    photo = "../imgdraw/" + photo;

			}
	
	//System.out.println(Pid+"||"+Gid+"||"+ProjectName+"||"+WorkCategory+"||"+Expression+"||"+BestWork+"||"+ProjectIntroduce);
	String message = ProjectWorkService.updateWorkInfo(Pid,Gid,ProjectName,WorkCategory,Expression,BestWork,ProjectIntroduce,photo,ProjectAddress);
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
    
  //获得所有作品
    @RequestMapping("/getWork.do")
    public String getWork(HttpServletRequest request,
		    HttpServletResponse response){
    	List<project_work> list = ProjectWorkService.getWork();
		try {
		    List listReturn = new ArrayList();
		    listReturn.add(list);
		    JSONArray json = JSONArray.fromObject(listReturn);
		    response.setContentType("text/html;charset=UTF-8");
		    response.getWriter().print(json.toString());

		} catch (Exception e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}
		return null;
    }
    
    //获得作品类别
    @RequestMapping("/getCategory.do")
    public String getCategory(HttpServletRequest request,
		    HttpServletResponse response){
    	List<work_category> list = ProjectWorkService.getCategory();
		try {
			List listReturn = new ArrayList();
		    listReturn.add(list);
		    JSONArray json = JSONArray.fromObject(listReturn);
		    response.setContentType("text/html;charset=UTF-8");
		    response.getWriter().print(json.toString());

		} catch (Exception e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}
		return null;
    }
    //获得组别
    @RequestMapping("/getGroup.do")
    public String getGroup(HttpServletRequest request,
		    HttpServletResponse response){
    	List<groups> list = ProjectWorkService.getGroup(); 
		try {
			List listReturn = new ArrayList();
		    listReturn.add(list);
		    JSONArray json = JSONArray.fromObject(listReturn);
		    response.setContentType("text/html;charset=UTF-8");
		    response.getWriter().print(json.toString());

		} catch (Exception e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}
		return null;
    }
    
    //获取项目人员信息
    @RequestMapping("/getPersonnel.do")
    public String getPersonnel(HttpServletRequest request,
		    HttpServletResponse response){
    	String sid = request.getParameter("sid");
    	List<project_personnel> list = ProjectWorkService.getPersonnel(sid); 
		try {
			List listReturn = new ArrayList();
		    listReturn.add(list);
		    JSONArray json = JSONArray.fromObject(listReturn);
		    response.setContentType("text/html;charset=UTF-8");
		    response.getWriter().print(json.toString());

		} catch (Exception e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}
		return null;
    }
    
    //获得作品及人员信息
    @RequestMapping("/getAllWorkInfo.do")
    public String getAllWorkInfo(HttpServletRequest request,
		    HttpServletResponse response){
    	String pid = request.getParameter("pid");
    	List<WorkInfo> list = ProjectWorkService.getAllWorkInfo();
		try {
			List listReturn = new ArrayList();
		    listReturn.add(list);
		    JSONArray json = JSONArray.fromObject(listReturn);
		    response.setContentType("text/html;charset=UTF-8");
		    response.getWriter().print(json.toString());

		} catch (Exception e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}
		return null;
    }
  
  //根据sid获得作品及人员信息
    @RequestMapping("/getAllWorkInfoBysid.do")
    public String getAllWorkInfoBysid(HttpServletRequest request,
		    HttpServletResponse response){
    	String sid = request.getParameter("sid");
    	List<WorkInfo> list1 = ProjectWorkService.getAllWorkInfo(sid);
    	List<project_personnel> list2 = ProjectWorkService.getPersonnel(sid); 
		try {
			List listReturn = new ArrayList();
		    listReturn.add(list1);
		    listReturn.add(list2);
		    JSONArray json = JSONArray.fromObject(listReturn);
		    response.setContentType("text/html;charset=UTF-8");
		    response.getWriter().print(json.toString());

		} catch (Exception e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}
		return null;
    }
    
  //根据gid获得作品信息
    @RequestMapping("/getWorkInfoBygid.do")
    public String getWorkInfoBypid(HttpServletRequest request,
		    HttpServletResponse response){
    	String gid = request.getParameter("gid");
    	List<project_work> list1 = ProjectWorkService.getWorkInfoBypid(gid);
		try {
			List listReturn = new ArrayList();
		    listReturn.add(list1);
		    JSONArray json = JSONArray.fromObject(listReturn);
		    response.setContentType("text/html;charset=UTF-8");
		    response.getWriter().print(json.toString());

		} catch (Exception e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}
		return null;
    }
    
    
    
}
