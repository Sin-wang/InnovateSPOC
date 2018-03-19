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

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.base.Po.news;
import com.base.ServiceImpl.NotificationServiceImpl;
import com.base.utils.CookieUtils;
import com.base.utils.ExcelReport;
import com.base.utils.MessageUtils;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;


@Controller("NotificationController")
public class NotificationController {

	@Autowired
	private NotificationServiceImpl notificationServiceImpl;
	
	// 发布通知
		@RequestMapping("jsp/saveNotification.do")
		public String saveNotification(HttpServletRequest request, ModelMap map,
				HttpServletResponse response) throws IOException {
			
			Date date=new Date();
			DateFormat format=new SimpleDateFormat("yyyy-MM-dd");
			String time=format.format(date);
			System.out.println(time);
			
			String message = request.getParameter("Newcontent");
			System.out.println(message+"==========");
			String title = request.getParameter("title");
			System.out.println(title+"--------------");
			String photo = null;
			
			// 上传文件（图片），将文件存入服务器指定路径下，并获得文件的相对路径
			MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
			// 得到上传的文件
			MultipartFile mFile2 = multipartRequest.getFile("photo2");
			// 得到上传服务器的路径

			/*
			 * String path = request.getSession().getServletContext()
			 * .getRealPath("/imgdraw/");
			 */

			String path2 = ExcelReport.getWebRootUrl(request, "/imgdraw/");

			// CookieUtils.addCookie("image", filename, response);
			if (!mFile2.isEmpty()) {
				
				// 得到上传的文件的文件名
				String fileName = mFile2.getOriginalFilename();
				String fileType = fileName.substring(fileName.lastIndexOf("."));
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

				// 重新写cookie中的img属性值
				CookieUtils.addCookie("image", photo, response);
			}
			
			String insertSql = "insert into news(title,content,time,photo) values" +
					"(\'"+ title.trim()+ "\'," +
					"\'"+ message.trim()+ "\'," +
					"\'"+ time.trim()+ "\'," +
					"\'"+ photo.trim()+ "\')";
		    
			notificationServiceImpl.setNotification(insertSql);

			return "notification";
		}
	
		//获取通知详情
		@RequestMapping("jsp/newlist.do")
		public String newlist(ModelMap map, HttpServletResponse response,HttpServletRequest request) {

			response.setContentType("text/html;charset=UTF-8");
			// 获取当前是第几页
			String currentPage = request.getParameter("page");
			System.out.println(currentPage);
			if (currentPage == null)
				currentPage = "1";
			map.addAttribute("page", currentPage); // 返回当前页码
			
			// 每页有多少行，这里固定为每页10行
			//String itemsPerPage = request.getParameter("itemsPerPage");
			int itemsPerPage = 10;
			List list = notificationServiceImpl
					.getNotificationInfo(currentPage, String.valueOf(itemsPerPage));
			if(CollectionUtils.isNotEmpty(list)){
				map.addAttribute("notifications", list.get(0));
					
				int maxItems = (Integer) list.get(1);  // 获取最大记录数
		        int maxPage=0;
				
				if(maxItems%itemsPerPage==0)//判断是否最大记录是每页记录的整数倍
					maxPage = maxItems/itemsPerPage;
				else
					maxPage = maxItems/itemsPerPage+1;
				map.addAttribute("totalPages",maxPage);// 返回最大页数
				
				//下面计算分页的起始页码，最多显示10页
				List pageList = new ArrayList();
				List tempList = MessageUtils.calcPage(Integer.valueOf(currentPage), maxPage, 5);
				
				for (int i = (Integer) tempList.get(0); i <= (Integer)tempList.get(1); i++)   
				    	 pageList.add(i);
				
				map.addAttribute("pageList", pageList); // 用于显示页面1,2,3,4,...效果
			}

			return "newlist";
		}
		
		//获取通知详情
				@RequestMapping("jsp/showNewList.do")
				public String newlist1(ModelMap map, HttpServletResponse response,HttpServletRequest request) {

					response.setContentType("text/html;charset=UTF-8");
					// 获取当前是第几页
					String currentPage = request.getParameter("page");
					System.out.println(currentPage);
					if (currentPage == null)
						currentPage = "1";
					map.addAttribute("page", currentPage); // 返回当前页码
					
					// 每页有多少行，这里固定为每页10行
					//String itemsPerPage = request.getParameter("itemsPerPage");
					int itemsPerPage = 10;
					List list = notificationServiceImpl
							.getNotificationInfo(currentPage, String.valueOf(itemsPerPage));
					if(CollectionUtils.isNotEmpty(list)){
						map.addAttribute("notifications", list.get(0));
							
						int maxItems = (Integer) list.get(1);  // 获取最大记录数
				        int maxPage=0;
						
						if(maxItems%itemsPerPage==0)//判断是否最大记录是每页记录的整数倍
							maxPage = maxItems/itemsPerPage;
						else
							maxPage = maxItems/itemsPerPage+1;
						map.addAttribute("totalPages",maxPage);// 返回最大页数
						
						//下面计算分页的起始页码，最多显示10页
						List pageList = new ArrayList();
						List tempList = MessageUtils.calcPage(Integer.valueOf(currentPage), maxPage, 5);
						
						for (int i = (Integer) tempList.get(0); i <= (Integer)tempList.get(1); i++)   
						    	 pageList.add(i);
						
						map.addAttribute("pageList", pageList); // 用于显示页面1,2,3,4,...效果
					}

					return "showNewList";
				}
		
		//通知详情页面
		@RequestMapping("jsp/newdetail.do")
		public String newdetail(ModelMap map, HttpServletRequest request,
				HttpServletResponse response) {
					
			response.setContentType("text/html;charset=UTF-8");
			// 获取要读取的通知详情id
			String id = request.getParameter("id");
			news notification =null;
			if (id != null)
				notification = notificationServiceImpl.getNotification(id);
			
			map.addAttribute("notification", notification);
			return "newdetail";
		}
		
		//通知详情页面
				@RequestMapping("jsp/detailNew.do")
				public String newdetail2(ModelMap map, HttpServletRequest request,
						HttpServletResponse response) {
							
					response.setContentType("text/html;charset=UTF-8");
					// 获取要读取的通知详情id
					String id = request.getParameter("id");
					news notification =null;
					if (id != null)
						notification = notificationServiceImpl.getNotification(id);
					
					map.addAttribute("notification", notification);
					return "detailNew";
				}
		
		//删除新闻
		@RequestMapping("jsp/delnews.do")
		public String delnews(ModelMap map, HttpServletRequest request,
				HttpServletResponse response){
			int nid = Integer.parseInt(request.getParameter("news"));
			System.out.println(nid);
			String message = notificationServiceImpl.delnews(nid);
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
		
		//获得新闻
		@RequestMapping("/getNews.do")
		public String getNews(HttpServletRequest request,
				HttpServletResponse response){
			List<news> list = notificationServiceImpl.getNews();
			try {
			    List list4 = new ArrayList();
			    list4.add(list);
			    JSONArray json = JSONArray.fromObject(list4);
			    response.setContentType("text/html;charset=UTF-8");
			    response.getWriter().print(json.toString());

			} catch (Exception e) {
			    // TODO Auto-generated catch block
			    e.printStackTrace();
			}
			return null;
		}
}
