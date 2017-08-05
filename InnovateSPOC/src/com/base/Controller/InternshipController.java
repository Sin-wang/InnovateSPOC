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

import com.base.Po.internship;
import com.base.Po.internshipList;
import com.base.Service.InternshipService;

@Controller("InternshipController")
@RequestMapping("/jsp")
public class InternshipController {

	@Autowired
	private InternshipService internshipService;
	
	//增加实习经历信息
	@RequestMapping("addinternship.do")
	public String addinternship(HttpServletRequest request,
		    HttpServletResponse response){
		int flag=0;
		String studentId = request.getParameter("deptSelectOne");
		String address = request.getParameter("address1");
		String begin = request.getParameter("begin1");
		String end = request.getParameter("end1");
		String description = request.getParameter("description1");
		flag = internshipService.addinternship(studentId, address, begin, end, description);
		request.setAttribute("flag", flag);
		return "internship";
	}
	
	//展示实习经历
	@RequestMapping("query_internship.do")
	public String query_internship(HttpServletRequest request,
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
		List<internship> list = new ArrayList<internship>();
		internshipList pr = null;
		pr = internshipService.query_internship(size, pageindex, order, orderDir, searchValue);
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
	
	//删除实习经历记录
	@RequestMapping("delInternship.do")
	public String delInternship(HttpServletRequest request,
			HttpServletResponse response){
		String str = request.getParameter("deletstr");
		String message = internshipService.delInternship(str);
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
	
	//修改实习经历
	@RequestMapping("updateInternship.do")
	public String updateInternship(HttpServletRequest request,
			HttpServletResponse response){
		int id = Integer.parseInt(request.getParameter("id"));
		String begin = request.getParameter("begin");
		String end = request.getParameter("end");
		String description = request.getParameter("description");
		internshipService.updateInternship(id,begin, end, description);
		return "internship";
	}
}
