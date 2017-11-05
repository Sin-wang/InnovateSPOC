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

import com.base.Po.educationList;
import com.base.Po.education_experience;
import com.base.Service.EducationExperienceService;

@Controller("EdecationExperienceController")
@RequestMapping("/jsp")
public class EducationExperienceController {

	@Autowired
	private EducationExperienceService educationExperienceService;
	
	//展示教育经历
	@RequestMapping("/quert_educationExperience.do")
	public String query_educationExperience(HttpServletRequest request,
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
		List<education_experience> list = new ArrayList<education_experience>();
		educationList pr = null;
		pr = educationExperienceService.query_education(size, pageindex, order, orderDir, searchValue);
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
	
	//增加教育经历
	@RequestMapping("/addEducation.do")
	public String addEducation(HttpServletRequest request,
		    HttpServletResponse response){
		int flag=0;
		String studentId = request.getParameter("deptSelectOne");
		String address = request.getParameter("address1");
		String begin = request.getParameter("begin1");
		String end = request.getParameter("end1");
		String description = request.getParameter("description1");
		flag = educationExperienceService.addeducation(studentId, address, begin, end, description);
		request.setAttribute("flag", flag);
		return "educationExperience";
	}
	
	//删除教育经历
	@RequestMapping("/delEducation.do")
	public String delEducation(HttpServletRequest request,
		    HttpServletResponse response){
		String str = request.getParameter("deletstr");
		String message = educationExperienceService.delEducation(str);
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
	
	//修改教育经历
	@RequestMapping("/updateEducation.do")
	public String updateEducation(HttpServletRequest request,
		    HttpServletResponse response) throws IOException{
		int id = Integer.parseInt(request.getParameter("id"));
		String studentId = request.getParameter("sid");
		String begin = request.getParameter("begin");
		String end = request.getParameter("end");
		String description = request.getParameter("description");
		educationExperienceService.updateEducation(id, begin, end, description);
		String toPage = "/jsp/educationExperience.jsp";
		toPage = request.getContextPath()+toPage;
		response.sendRedirect(toPage);
		return null;
	}
	
	//展示教育经历
		@RequestMapping("/quert_UeducationExperience.do")
		public String query_UeducationExperience(HttpServletRequest request,
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
			List<education_experience> list = new ArrayList<education_experience>();
			educationList pr = null;
			pr = educationExperienceService.query_Ueducation(sid,size, pageindex, order, orderDir, searchValue);
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
		
		//用户增加教育经历
		@RequestMapping("/addUEducation.do")
		public String addUEducation(HttpServletRequest request,
			    HttpServletResponse response) throws IOException{
			int flag=0;
			String studentId = request.getParameter("sid1");
			String address = request.getParameter("address1");
			String begin = request.getParameter("begin1");
			String end = request.getParameter("end1");
			String description = request.getParameter("description1");
			flag = educationExperienceService.addeducation(studentId, address, begin, end, description);
			request.setAttribute("flag", flag);
			String toPage = request.getContextPath()+"/jsp/Uedu.jsp?"+studentId;
			response.sendRedirect(toPage);
			return null;
		}
		//修改教育经历
		@RequestMapping("/updateUEducation.do")
		public String updateUEducation(HttpServletRequest request,
			    HttpServletResponse response) throws IOException{
			int id = Integer.parseInt(request.getParameter("id"));
			String studentId = request.getParameter("sid");
			String begin = request.getParameter("begin");
			String end = request.getParameter("end");
			String description = request.getParameter("description");
			educationExperienceService.updateEducation(id, begin, end, description);
			String toPage = null;
			toPage = request.getContextPath()+"/jsp/Uedu.jsp?"+studentId;
			response.sendRedirect(toPage);
			return null;
		}
}
