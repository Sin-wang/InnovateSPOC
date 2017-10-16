/**
 * 
 */
package com.base.Service;

import java.util.List;

import com.base.Po.EmployeeStudent;
import com.base.Po.employList;
import com.base.Po.employment;
import com.base.Po.groups;
import com.base.Po.students;

/**
 * @author 鸡毛大大
 *
 */
public interface EmploymentManageService {

	/*
	  参数说明：pageindex,为当前页数;size,为每页的条数; order,排序列;
            orderDir,为排序的顺序;      
	 返回值：   employList,该对象包括就业管理数据记录+记录条数
	 函数功能：获取该用户就业管理数据
	  */
	public employList employment(int pageindex, int size,int order,String orderDir,String searchValue);

	/*
	  参数说明：str2,字符串型，为就业管理申请的信息; 	         
	 返回值：   无返回值
	 函数功能：增加就业管理信息
	 */
	public int increaseEmpInfo(String stuName, String companyName,
			String wage, String work, String graduateYear, String excellence);
	
	/*
	  参数说明：str,为就业管理信息的编号   
	 返回值： 无返回值
	 函数功能：删除就业管理信息
	  */
	public String delInfo(String str);
	
	/*
	  参数说明：         
	 返回值：   无返回值
	 函数功能：修改实习基地截止日期
	 */
	public String updateEmpInfo(String sid, String company, String salary,
			String workin, String graduationYear, String excellence);

	public List<employment> getEmploy();

	public List<groups> getGroup();

	public List<students> getStudents();

	public List<EmployeeStudent> getEmployeeStudent(int gid);  
 

	
}
