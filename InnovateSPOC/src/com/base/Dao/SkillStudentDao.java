package com.base.Dao;

import java.util.List;

import com.base.Po.skill_student;
import com.base.Po.skill_studentList;
import com.base.Po.skills;
import com.base.Po.students;

public interface SkillStudentDao {

	public List<skills> getSkill();
	
	public skill_studentList query_internship(Integer size, Integer pageindex,
			String columnName, String orderDir, String searchValue);
	
	public int addSkillstudent(String studentId,int kid,String exp);

	public String delSkillstudent(String str);
	
	public void updateSkill(int id,String exp);

	public List<students> getsname();
	
	public List<skill_student> get_skill_student(String sid);
}
