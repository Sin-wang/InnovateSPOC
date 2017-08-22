package com.base.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.base.Po.education_experience;
import com.base.Po.groups;
import com.base.Po.hobbys;
import com.base.Po.internship;
import com.base.Po.skill_student;
import com.base.Po.studentList;
import com.base.Po.students;
import com.base.Service.EducationExperienceService;
import com.base.Service.HobbysService;
import com.base.Service.InternshipService;
import com.base.Service.SkillStudentService;
import com.base.Service.StudentService;

@Controller("StudentmanageController")
@RequestMapping("/jsp")
public class StudentmanageController {

	@Autowired
    private StudentService studentService;
	
	@Autowired
	private EducationExperienceService educationExperienceService;
	
	@Autowired
	private HobbysService hobbysService;
	
	@Autowired
	private InternshipService internshipService;
	
	@Autowired
	private SkillStudentService skillStudentService;
	
	//增加学生信息
		@RequestMapping("/addstudent.do")
		public String addstudent(HttpServletRequest request,
			    HttpServletResponse response, HttpSession session){
			String studentId = request.getParameter("studentId");
			String studentName = request.getParameter("studentName");
			String sex = request.getParameter("sex");
			String Areason = request.getParameter("Areason");
			String password = request.getParameter("password");
			String Caddress = request.getParameter("Caddress");
			String Eaddress = request.getParameter("Eaddress");
			String telephone = request.getParameter("telephone");
			String qq = request.getParameter("qq");
			String EnrollmentYear = request.getParameter("EnrollmentYear");
			String major = request.getParameter("major");
			String gra = request.getParameter("gra");
			String emp = request.getParameter("emp");
			int gid = Integer.parseInt(request.getParameter("deptSelectOne1"));
			System.out.println(gid);
//			String photo = request.getParameter("file");
			int flag = studentService.addStudent(studentId,studentName,sex,Areason,password,Caddress,Eaddress,telephone,qq,EnrollmentYear,major,gra,emp,gid);
			request.setAttribute("flag", flag);
			return "studentManage";
		}
		
		// 展示学生信息
	    @RequestMapping("/query_student.do")
	    public String query_student(HttpServletRequest request,
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
		List<students> list = new ArrayList<students>();
		studentList pr = null;
		pr = studentService.query_student(size, pageindex, order,
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
		
	// 删除学生
	@RequestMapping("/delstudent.do")
	public String deleteStudent(HttpServletRequest request,
			HttpServletResponse response) {
		String str = request.getParameter("deletstr");
		String message = studentService.deleteStudent(str);
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

	//修改学生信息
	@RequestMapping("updatestudent.do")
	public String updateStudent(HttpServletRequest request,
			HttpServletResponse response){
		String sid = request.getParameter("sid");
		int gid = Integer.parseInt(request.getParameter("SelectOne"));
		String Sintroduce = request.getParameter("Sintroduce");
		String chinese_address = request.getParameter("chinese_address");
		String english_address = request.getParameter("english_address");
		String phone = request.getParameter("phone");
		String qq = request.getParameter("qq");
		String smajor = request.getParameter("smajor");
		String gra = request.getParameter("SelectOne1");
		String emp = request.getParameter("SelectOne2");
		studentService.updateStudent(sid, Sintroduce, chinese_address, english_address, phone, qq, smajor, gid, gra, emp);
		return "studentManage";
		
	}
	
	//获得组别名
	@RequestMapping("get_group.do")
	public String getGroup(HttpServletRequest request,
		    HttpServletResponse response){
		List<groups> list1 = studentService.getGroup();
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
	
	//获得UI学生
	@RequestMapping("get_UIstudent.do")
	public String get_UIstudent(HttpServletRequest request,
		    HttpServletResponse response){
		List<students> list1 = studentService.get_UIstudent();
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
	
	//获得程序学生
		@RequestMapping("get_Pstudent.do")
		public String get_Pstudent(HttpServletRequest request,
			    HttpServletResponse response){
			List<students> list1 = studentService.get_Pstudent();
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
		
	//获得学生简历
	@RequestMapping("get_resume.do")
	public String get_resume(HttpServletRequest request,
		    HttpServletResponse response){
		String sid = request.getParameter("sid");
		List<students> list1 = studentService.getStudents(sid);
		List<education_experience> list2 = educationExperienceService.get_education_experience(sid);
		List<hobbys> list3 = hobbysService.get_hobbys(sid);
		List<internship> list4 = internshipService.get_internship(sid);
		List<skill_student> list5 = skillStudentService.get_skill_student(sid);
		System.out.println(sid);
		try {
		    List list = new ArrayList();
		    list.add(list1);
		    list.add(list2);
		    list.add(list3);
		    list.add(list4);
		    list.add(list5);
		    JSONArray json = JSONArray.fromObject(list);
		    response.setContentType("text/html;charset=UTF-8");
		    response.getWriter().print(json.toString());

		} catch (Exception e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}
		return null;
	}
}
