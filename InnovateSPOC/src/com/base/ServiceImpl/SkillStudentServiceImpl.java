package com.base.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.Dao.SkillStudentDao;
import com.base.Po.skill_student;
import com.base.Po.skill_studentList;
import com.base.Po.skills;
import com.base.Po.students;
import com.base.Service.SkillStudentService;

@Service("SkillStudentService")
public class SkillStudentServiceImpl implements SkillStudentService{

	@Autowired
	private SkillStudentDao skillStudentdao;

	@Override
	public List<skills> getSkill() {
		// TODO Auto-generated method stub
		List<skills> list = skillStudentdao.getSkill();
		return list;
	}

	@Override
	public skill_studentList query_skillstudent(Integer size,
			Integer pageindex, int order, String orderDir, String searchValue) {
		// TODO Auto-generated method stub
		String columnName = "";
		if (order == 1) {
		    columnName = "id";
		} else if (order == 2) {
		    columnName = "name";
		}
		skill_studentList list = skillStudentdao.query_internship(size, pageindex, columnName, orderDir, searchValue);
		return list;
	}

	@Override
	public int addSkillstudent(String studentId, int kid, String exp) {
		// TODO Auto-generated method stub
		int flag = skillStudentdao.addSkillstudent(studentId, kid, exp);
		return flag;
	}

	@Override
	public String delSkillstudent(String str) {
		// TODO Auto-generated method stub
		String message= skillStudentdao.delSkillstudent(str);
		return message;
	}

	@Override
	public void updateSkill(int id, String exp) {
		// TODO Auto-generated method stub
		skillStudentdao.updateSkill(id, exp);
	}

	@Override
	public List<students> getsname() {
		// TODO Auto-generated method stub
		List<students> list = skillStudentdao.getsname();
		return list;
	}

	@Override
	public List<skill_student> get_skill_student(String sid) {
		// TODO Auto-generated method stub
		List<skill_student> list= skillStudentdao.get_skill_student(sid);
		return list;
	}
	
	
}
