/**
 * 
 */
package com.base.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.base.Po.employList;
import com.base.Po.teachers;
import com.base.Po.userCenter;

 
/**
 * @author 鸡毛大大
 *
 */
public interface UserCenterDao {

	public List<userCenter> getPersonInfo(String id);

	public void updateStu(String id, String name, String sex, String phone,
			String qq, String major, String school_year, String possword,
			String chinese_address, String english_address, String graduation,
			String employed, String introduce, String filename);

	public void updateTea(String id, String name, String sex, String introduce,
			String filename,String position);
	


 



} 
 