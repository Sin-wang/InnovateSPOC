package com.base.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.base.Po.User;
import com.base.Po.userList;
import com.base.Service.UserService;

@Controller("UserController")
@RequestMapping("/jsp")
public class UserController {

	@Autowired
	private UserService userService;
	//增加用户
	@RequestMapping("/adduser.do")
	public String addUser(HttpServletRequest request,
		    HttpServletResponse response, HttpSession session){
		String id =request.getParameter("Id");
		String username = request.getParameter("Username");
		String password = request.getParameter("Password");
		int flag = userService.addUser(id,username, password);
		request.setAttribute("flag", flag);
		return "user";
	}
	
	//展示用户
	@RequestMapping("/query_user")
	public String quert_user(HttpServletRequest request,
		    HttpServletResponse response){
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
		List<User> list = new ArrayList<User>();
		userList pr = null;
		pr = userService.query_user(size, pageindex, order, orderDir, searchValue);
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
	
	//删除用户
	@RequestMapping("delUser")
	public String delUser(HttpServletRequest request,
		    HttpServletResponse response){
		String str = request.getParameter("deletstr");
		String message = userService.delUser(str);
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
	//修改用户信息
	@RequestMapping("updateuser.do")
	public String updateUser(HttpServletRequest request,
			HttpServletResponse response){
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		System.out.println(id);
		userService.updateUser(id, password);
		return "user";
			
		}
}
