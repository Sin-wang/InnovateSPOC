package com.base.Service;

import java.util.List;

import com.base.Po.skill_student;
import com.base.Po.skill_studentList;
import com.base.Po.skills;
import com.base.Po.students;

public interface SkillStudentService {

	public List<skills> getSkill();
	
	public skill_studentList query_skillstudent(Integer size, Integer pageindex,
			int order, String orderDir, String searchValue);
	
	public int addSkillstudent(String studentId,int kid,String exp);

	public String delSkillstudent(String str);
	
	public void updateSkill(int id,String exp);

	public List<students> getsname();
	
	public List<skill_student> get_skill_student(String sid);

	public skill_studentList query_Uskillstudent(String sid, Integer size,
			Integer pageindex, int order, String orderDir, String searchValue);
}
