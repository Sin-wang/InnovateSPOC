package com.base.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.base.Po.news;
import com.base.ServiceImpl.NotificationServiceImpl;
import com.base.utils.MessageUtils;


@Controller("NotificationController")
public class NotificationController {

	@Autowired
	private NotificationServiceImpl notificationServiceImpl;
	
	// 发布通知
		@RequestMapping("jsp/saveNotification.do")
		public String saveNotification(HttpServletRequest request, ModelMap map,
				HttpServletResponse response) {

			String message = request.getParameter("data");
			String title = request.getParameter("title");
			String insertSql = "insert into news(title,content) values" +
					"(\'"+ title.trim()+ "\'," +
					"\'"+ message.trim()+ "\')";
		    
			notificationServiceImpl.setNotification(insertSql);

			return null;
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
}
