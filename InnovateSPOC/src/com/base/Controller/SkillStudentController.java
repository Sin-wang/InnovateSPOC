package com.base.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.base.Po.skill_student;
import com.base.Po.skill_studentList;
import com.base.Po.skills;
import com.base.Po.students;
import com.base.Service.SkillStudentService;

@Controller("SkillStudentController")
@RequestMapping("/jsp")
public class SkillStudentController {

	@Autowired
	private SkillStudentService skillStudentService;
	
	//展示
	@RequestMapping("skillStudent.do")
	public String query_skillstudent(HttpServletRequest request,
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
		List<skill_student> list = new ArrayList<skill_student>();
		skill_studentList pr = null;
		pr = skillStudentService.query_skillstudent(size, pageindex, order, orderDir, searchValue);
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
	
	//获得技能
	@RequestMapping("get_skill.do")
	public String getSkill(HttpServletRequest request,
		    HttpServletResponse response){
		List<skills> list1 = skillStudentService.getSkill();
		try {
		    List list4 = new ArrayList();
		    list4.add(list1);
		    JSONArray json = JSONArray.fromObject(list4);
		    response.setContentType("text/html;charset=UTF-8");
		    response.getWriter().print(json.toString());

		} catch (Exception e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}
		return null;
	}
	
	//获得学生姓名
	@RequestMapping("get_sname.do")
	public String get_sname(HttpServletRequest request,
		    HttpServletResponse response){
		List<students> list1 = skillStudentService.getsname();
		try {
		    List list4 = new ArrayList();
		    list4.add(list1);
		    JSONArray json = JSONArray.fromObject(list4);
		    response.setContentType("text/html;charset=UTF-8");
		    response.getWriter().print(json.toString());

		} catch (Exception e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}
		return null;
	}
	//增加
	@RequestMapping("addSkillstudent.do")
	public String addSkillstudent(HttpServletRequest request,
		    HttpServletResponse response){
		int flag=0;
		String studentId = request.getParameter("deptSelectOne");
		int kid = Integer.parseInt(request.getParameter("deptSelectOne1"));//技能id
		String exp = request.getParameter("exp1");
		flag = skillStudentService.addSkillstudent(studentId, kid, exp);
		request.setAttribute("flag", flag);
		return "skill_student";
	}
	
	//删除
	@RequestMapping("delSkillstudent.do")
	public String delSkillstudent(HttpServletRequest request,
		    HttpServletResponse response){
		String str = request.getParameter("deletstr");
		String message = skillStudentService.delSkillstudent(str);
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
	
	//修改
	@RequestMapping("updateskill.do")
	public String updateSkill(HttpServletRequest request,
		    HttpServletResponse response){
		int id = Integer.parseInt(request.getParameter("id"));
		String exp = request.getParameter("exp");
		skillStudentService.updateSkill(id, exp);
		return "skill_student";
	}
}
