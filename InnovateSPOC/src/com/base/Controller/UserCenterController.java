package com.base.Controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.Cookie;
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

import com.base.Po.employList;
import com.base.Po.employment;
import com.base.Service.UserCenterService;
import com.base.utils.CookieUtils;
import com.base.utils.ExcelReport;
 


@Controller("UserCenterController")
@RequestMapping("/jsp")
//就业信息管理控制层
public class UserCenterController {
	
	@Autowired
	private UserCenterService usercenterservice;

	// 修改个人资料
	@RequestMapping("/Userupdate.do")
	public String Userupdate(HttpServletRequest request,
			HttpServletResponse response, ModelMap map) throws IOException {
		String filename = null;
		Cookie[] cookies = request.getCookies();// 获得所有cookie对象
		boolean flag = false;
		for (Cookie co : cookies) { // 遍历cookie数组
			// System.out.println(co.getName());
			if (co.getName().equals("username")) { // 判断此cookie的key值是否是username
				String id = co.getValue();

				// 上传文件（图片），将文件存入服务器指定路径下，并获得文件的相对路径
				MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
				// 得到上传的文件
				MultipartFile mFile = multipartRequest.getFile("img");
				if (!mFile.isEmpty()){
					// 得到上传服务器的路径
					/*
					 * String path = request.getSession().getServletContext()
					 * .getRealPath("/imgdraw/");
					 */
					String path = ExcelReport.getWebRootUrl(request,"/imgdraw/");
 
					//先删除原有的图像
					String deleteFile = CookieUtils.getCookieImage(request,response);
					deleteFile = deleteFile.substring(deleteFile.lastIndexOf("/"));
					File tempFile = new File(path+deleteFile);
					if (tempFile.isFile() && tempFile.exists()) { 
					   tempFile.delete();
					}
					//System.out.println(path+deleteFile);
					
					// 得到上传的文件的文件名
					String fileName = mFile.getOriginalFilename();
					String fileType = fileName.substring(fileName
							.lastIndexOf("."));
					filename = new Date().getTime() + fileType;
					InputStream inputStream = mFile.getInputStream();
					byte[] b = new byte[1048576];
					int length = inputStream.read(b);
					path += "/" + filename;
					// 文件流写到服务器端
					FileOutputStream outputStream = new FileOutputStream(path);
					outputStream.write(b, 0, length);
					inputStream.close();
					outputStream.close();
					filename = "../imgdraw/" + filename;
					
					//重新写cookie中的img属性值
					CookieUtils.addCookie("image", filename,response);
					
				}
				String name = request.getParameter("name");
				if (name.equals("")){
					name = null;
				}
				String sex = request.getParameter("sex");
				if (sex.equals("")){
					sex = null;
				}
				String phone = request.getParameter("phone");
				if (phone.equals("")) {
					phone = null;
				}
				
				String qq = request.getParameter("qq");
				if (qq.equals("")){
					qq = null;
				}
				
				String major = request.getParameter("major");
				if (major.equals("")){
					major = null;
				}
				String school_year = request.getParameter("school_year");
				if (school_year.equals("")){
					school_year = null;
				}
				String possword = request.getParameter("possword");
				if (possword.equals("")) {
					possword = null;
				}
				
				String chinese_address = request.getParameter("chinese_address");
				if (chinese_address.equals("")){
					chinese_address = null;
				}
				String english_address = request.getParameter("english_address");
				if (english_address.equals("")){
					english_address = null;
				}
				String graduation = request.getParameter("graduation");
				if (graduation.equals("")){
					graduation = null;
				}
				String employed = request.getParameter("employed");
				if (employed.equals("")){
					employed = null;
				}
				String introduce = request.getParameter("introduce");
				if (introduce.equals("")){
					introduce = null;
				}
				usercenterservice.update(id, name, phone, possword, filename);
			}
		}

		//CookieUtils.addCookie("image", filename, response);

		return "redirect:user.jsp";
	}
}
