package com.base.Service;

import java.util.List;

import com.base.Po.teacherList;
import com.base.Po.teachers;

public interface TeacherService {
    /**
     * 用户名username 密码：password
     * 
     * @param username
     * @param password
     * @return
     */
    public int addTeacher(String teacherId,String teacherName,String sex,String Areason,String password);

	public teacherList query_teacher(Integer size, Integer pageindex,
			int order, String orderDir, String searchValue);

	public int CheckteacherId(int teacherId);

	public String deleteTeacher(String str);

	public void updateteacher(String tid, String tintroduce);

	public List<teachers> getTeacher();
}
