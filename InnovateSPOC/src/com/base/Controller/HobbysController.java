package com.base.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.base.Po.hobbyList;
import com.base.Po.hobbys;
import com.base.Service.HobbysService;

@Controller("HobbysController")
@RequestMapping("/jsp")
public class HobbysController {

	@Autowired
	private HobbysService hobbysService;
	
	//增加爱好
	@RequestMapping("addhobby.do")
	public String addhobby(HttpServletRequest request,
		    HttpServletResponse response){
		int flag=0;
		String studentId = request.getParameter("deptSelectOne");
		String hobby = request.getParameter("hobby");
		String begin = request.getParameter("begin");
		String end = request.getParameter("end");
		String description = request.getParameter("description");
		flag = hobbysService.addhobby(studentId, hobby, begin, end, description);
		request.setAttribute("flag", flag);
		return "hobbys";
	}
	
	//展示爱好
	@RequestMapping("query_hobbys.do")
	public String query_hobbys(HttpServletRequest request,
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
		List<hobbys> list = new ArrayList<hobbys>();
		hobbyList pr = null;
		pr = hobbysService.query_hobby(size, pageindex, order, orderDir, searchValue);
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
	
	//删除爱好
	@RequestMapping("delHobby.do")
	public String delHobby(HttpServletRequest request,
		    HttpServletResponse response){
		String str = request.getParameter("deletstr");
		String message = hobbysService.delHobby(str);
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
	
	//更新
	@RequestMapping("updatehobbys.do")
	public String updatehobbys(HttpServletRequest request,
		    HttpServletResponse response) throws IOException{
		int id = Integer.parseInt(request.getParameter("id"));
		String studentId = request.getParameter("Usid");
		String begin = request.getParameter("begin1");
		String end = request.getParameter("end1");
		String description = request.getParameter("description1");
		hobbysService.updateHobby(id, begin, end, description);
		String toPage = "/jsp/internship.jsp";
		toPage = request.getContextPath()+toPage;
		response.sendRedirect(toPage);
		return null;
	}
	
	//展示爱好
		@RequestMapping("query_Uhobbys.do")
		public String query_Uhobbys(HttpServletRequest request,
			    HttpServletResponse response){
			String sid = request.getParameter("Usid");
			String searchValue = request.getParameter("search[value]");
			if (searchValue.equals("")) {
			    searchValue = null;
			}
			// 获取当前页面的传输几条记录
			Integer size = Integer.parseInt(request.getParameter("length"));
			// 数据起始位置
			Integer startIndex = Integer.parseInt(request.getParameter("start"));
			Integer draw = Integer.parseInt(request.getParameter("draw"));
//			int order = Integer.valueOf(request.getParameter("order[0][column]"));// 排序的列号
			int order = 1;
			// String orderDir = request.getParameter("order[0][dir]");//
			// 排序的顺序asc or
			String orderDir = "desc"; // // desc
			// 通过计算求出当前页面为第几页
			Integer pageindex = (startIndex / size + 1);
			int recordsTotal = 0;
			List<hobbys> list = new ArrayList<hobbys>();
			hobbyList pr = null;
			pr = hobbysService.query_Uhobby(sid,size, pageindex, order, orderDir, searchValue);
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
		
		//用户增加爱好
		@RequestMapping("addUhobby.do")
		public String addUhobby(HttpServletRequest request,
			    HttpServletResponse response) throws IOException{
			int flag=0;
			String studentId = request.getParameter("sid1");
			String hobby = request.getParameter("hobby");
			String begin = request.getParameter("begin");
			String end = request.getParameter("end");
			String description = request.getParameter("description");
			flag = hobbysService.addhobby(studentId, hobby, begin, end, description);
			request.setAttribute("flag", flag);
			String toPage = request.getContextPath()+"/jsp/Uhobby.jsp?"+studentId;
			response.sendRedirect(toPage);
			return null;
		}
		
		//更新
		@RequestMapping("updateUhobbys.do")
		public String updateUhobbys(HttpServletRequest request,
			    HttpServletResponse response) throws IOException{
			int id = Integer.parseInt(request.getParameter("id"));
			String studentId = request.getParameter("sid");
			String begin = request.getParameter("begin1");
			String end = request.getParameter("end1");
			String description = request.getParameter("description1");
			hobbysService.updateHobby(id, begin, end, description);
			String toPage = null;
			toPage = request.getContextPath()+"/jsp/Uhobby.jsp?"+studentId;
			response.sendRedirect(toPage);
			return null;
		}
}
