/**
 * 
 */
package com.base.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.base.Po.employList;
import com.base.Po.employment;
import com.base.Po.groups;

 
/**
 * @author 鸡毛大大
 *
 */
public interface EmploymentManageDao {

	/*
	  参数说明：pageindex,为当前页数;size,为每页的条数; order,排序列;
          orderDir,为排序的顺序;      
	 返回值：   MaintenanceList,该对象包括实习基地数据记录+记录条数
	 函数功能：获取该用户实习基地数据
	 */
	public employList employment(int pageindex, int size, String columnName,
			String orderDir, String searchValue);

	/*
	  参数说明：str1, 字符串型，为('基地编号','专业编号')的封装;str2,字符串型，为实习基地申请的信息; 	         
	 返回值：   无返回值
	 函数功能：增加实习基地
	 */

	public int increaseEmpInfo(String stuName, String companyName,
			String wage, String work, String graduateYear, String excellence);
	
	/*
	  参数说明：str,为就业信息的编号   
	 返回值： 无返回值
	 函数功能：删除就业信息
	  */
	public String delInfo(String str);

	public String updateEmpInfo(String sid, String company, String salary,
			String workin, String graduationYear, String excellence);

	public List<employment> getEmploy();

	public List<groups> getGroup(); 


}
