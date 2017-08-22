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

import com.base.Po.Group_list;
import com.base.Po.groups;
import com.base.Po.studentList;
import com.base.Po.student_group;
import com.base.Po.students;
import com.base.Service.GroupSevice;


@Controller("GroupmanageController")
@RequestMapping("/jsp")
public class GroupmanageController {
	@Autowired
	private GroupSevice groupSevice;
	
	//展示组别信息
	@RequestMapping("/query_group.do")
	public String query_grouo(HttpServletRequest request,
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
		List<student_group> list = new ArrayList<student_group>();
		Group_list pr = null;
		pr = groupSevice.query_group(size, pageindex, order,
			orderDir, searchValue);
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
	
	//修改组别信息
	@RequestMapping("/updataGroup.do")
	public String updataGroup(HttpServletRequest request,
			HttpServletResponse response){
		int gid = Integer.parseInt(request.getParameter("gid"));
		String gname = request.getParameter("gname");
		groupSevice.updataGroup(gid, gname);
		return "groupManage";
	}
	
	//增加组别
			@RequestMapping("/addgroup.do")
			public String addgroup(HttpServletRequest request,
				    HttpServletResponse response, HttpSession session){
				String gname = request.getParameter("gname");
				System.out.println("/111/"+gname+"///////");
				int flag = groupSevice.addGroups(gname);
				request.setAttribute("flag", flag);
				return "groupManage";
			}
	//删除组别
			@RequestMapping("/delgroup.do")
			public String deleteGroup(HttpServletRequest request,
					HttpServletResponse response) {
				String str = request.getParameter("deletstr");
				System.out.println("*****************************");
				System.out.println("/////"+str+"///////");
				System.out.println("*****************************");
				String message = groupSevice.deleteGroup(str);
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
}
