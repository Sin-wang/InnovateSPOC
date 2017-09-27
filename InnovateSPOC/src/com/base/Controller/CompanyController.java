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
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.base.Po.Company;
import com.base.Po.CompanyList;
import com.base.Po.groups;
import com.base.Po.studentList;
import com.base.Po.students;
import com.base.Service.CompanyService;
import com.base.Service.ProjectWorkService;
import com.base.utils.CookieUtils;
import com.base.utils.ExcelReport;

import java.io.FileOutputStream;
@Controller("CompanyController")
@RequestMapping("/jsp")
public class CompanyController {
	
	@Autowired
	private CompanyService companyservice;
	
	@Autowired
	  private ProjectWorkService ProjectWorkService;
	//增加
	@RequestMapping("/addCompant.do")
	public String addCompant(HttpServletRequest request,
		    HttpServletResponse response,  ModelMap map) throws IOException{
		
		String title=request.getParameter("title");
		String gname = request.getParameter("gname");
		String photo=null;
		// 上传文件（图片），将文件存入服务器指定路径下，并获得文件的相对路径
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		// 得到上传的文件
		MultipartFile mFile = multipartRequest.getFile("photo");
		// 得到上传服务器的路径
		/*
		 * String path = request.getSession().getServletContext()
		 * .getRealPath("/imgdraw/");
		 */
		String path = ExcelReport.getWebRootUrl(request, "/imgdraw/");

		// CookieUtils.addCookie("image", filename, response);		
		if (!mFile.isEmpty()) {
		    
		    
		    // 得到上传的文件的文件名
		    String fileName = mFile.getOriginalFilename();
		    String fileType = fileName.substring(fileName
			    .lastIndexOf("."));
		    photo = new Date().getTime() + fileType;
		    InputStream inputStream = mFile.getInputStream();
		    byte[] b = new byte[1048576];
		    int length = inputStream.read(b);
		    path += "/" + photo;
		    // 文件流写到服务器端
		    FileOutputStream outputStream = new FileOutputStream(path);
		    outputStream.write(b, 0, length);
		    inputStream.close();
		    outputStream.close();
		    photo = "../imgdraw/" + photo;

		    // 重新写cookie中的img属性值
		    CookieUtils.addCookie("image", photo, response);
		}
		System.out.println(title+"****"+photo+"****"+gname);
		int flag=companyservice.addCompany(title, photo,gname);
		request.setAttribute("flag", flag);
		return "communication_company";
	}
	
	//查看
	@RequestMapping("/quertCompany.do")
	public String quertCompany(HttpServletRequest request,
		    HttpServletResponse response) {
		String searchValue = request.getParameter("search[value]");
		if (searchValue.equals("")) {
		    searchValue = null;
		}
		// 获取当前页面的传输几条记录
		Integer size = Integer.parseInt(request.getParameter("length"));
		// 数据起始位置
		Integer startIndex = Integer.parseInt(request.getParameter("start"));
		Integer draw = Integer.parseInt(request.getParameter("draw"));
//		int order = Integer.valueOf(request.getParameter("order[0][column]"));// 排序的列号
		int order = 1;
		// String orderDir = request.getParameter("order[0][dir]");//
		// 排序的顺序asc or
		String orderDir = "desc"; // // desc
		// 通过计算求出当前页面为第几页
		Integer pageindex = (startIndex / size + 1);
		int recordsTotal = 0;
		List<Company> list = new ArrayList<Company>();
		CompanyList pr = null;
		
		pr = companyservice.query_company(size, pageindex, order, orderDir, searchValue);
		list = pr.getData();
		recordsTotal = pr.getRecordsTotal();
		JSONObject getObj = new JSONObject();
		getObj.put("draw", draw);
		getObj.put("recordsFiltered", recordsTotal);
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
	
	//获得企业交流管理信息
	@RequestMapping("/getPcompany.do")
	public String getPcompany(HttpServletRequest request,
		    HttpServletResponse response){
		
		System.out.println("***********************");
		
		
		List<Company> listCom=companyservice.get_Pcompany();
		try{
			List list = new ArrayList();
			list.add(listCom);
			JSONArray json = JSONArray.fromObject(list);
		    response.setContentType("text/html;charset=UTF-8");
		    response.getWriter().print(json.toString());

		} catch (Exception e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping("/getUcompany.do")
	public String getUcompany(HttpServletRequest request,
		    HttpServletResponse response){
		List<Company> listCom=companyservice.get_Ucompany();
		try{
			List list = new ArrayList();
			list.add(listCom);
			JSONArray json = JSONArray.fromObject(list);
		    response.setContentType("text/html;charset=UTF-8");
		    response.getWriter().print(json.toString());

		} catch (Exception e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping("/getDcompany.do")
	public String getDcompany(HttpServletRequest request,
		    HttpServletResponse response){
		List<Company> listCom=companyservice.get_Dcompany();
		try{
			List list = new ArrayList();
			list.add(listCom);JSONArray json = JSONArray.fromObject(list);
		    response.setContentType("text/html;charset=UTF-8");
		    response.getWriter().print(json.toString());

		} catch (Exception e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}
		return null;
	}
	
	
	
	//删除
	@RequestMapping("/delCompany.do")
	public String delCompany(HttpServletRequest request,
			HttpServletResponse response) {
		String str = request.getParameter("deletstr");
		String message = companyservice.deleteCompany(str);
		if (message.equals("success")) {
			message = "操作成功";
		} else if (message.equals("fail")) {
			message = "操作失败";
		}
		JSONObject getObj = new JSONObject();
		getObj.put("str", message);
		response.setContentType("text/html;charset=UTF-8");
		try {
			response.getWriter().print(getObj.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping("/updateCompany.do")
	public String updateCompany(HttpServletRequest request,
			HttpServletResponse response, ModelMap map) throws IOException{
		String title = request.getParameter("title");
		String gname = request.getParameter("gname");
		String picture=request.getParameter("picture");
		int id = Integer.parseInt(request.getParameter("id"));
		String photo = null;
		System.out.println("picture="+picture);
		System.out.println("title="+title);
		System.out.println("gname="+gname);
		System.out.println("id="+id);
		// 上传文件（图片），将文件存入服务器指定路径下，并获得文件的相对路径
			MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
				// 得到上传的文件
				MultipartFile mFile2 = multipartRequest.getFile("photo2");
				// 得到上传服务器的路径
				
				 /* String path = request.getSession().getServletContext()
				  .getRealPath("/imgdraw/");*/
				 
				String path2 = ExcelReport.getWebRootUrl(request, "/imgdraw/");

				// CookieUtils.addCookie("image", filename, response);		
				if (!mFile2.isEmpty()) {
				    // 先删除原有的图像
				    String deleteFile = picture;
				    deleteFile = deleteFile.substring(deleteFile
					    .lastIndexOf("/"));
				    File tempFile = new File(path2 + deleteFile);
				    if (tempFile.isFile() && tempFile.exists()) {
					tempFile.delete();
					// System.out.println(filename+"rrrrrr");
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
		
		companyservice.updateCompany(title, photo,gname,id);
		return "communication_company";
	}
	
	
}
