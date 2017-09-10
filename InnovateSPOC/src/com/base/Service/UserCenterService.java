/**
 * 
 */
package com.base.Service;

import java.util.List;

import com.base.Po.teachers;
import com.base.Po.userCenter;

/**
 * @author 鸡毛大大
 *
 */
public interface UserCenterService {


	public List<userCenter> getPersonInfo(String id);


	void update(String id, String userType, String name, String sex,
			String phone, String qq, String major, String school_year,
			String possword, String chinese_address, String english_address,
			String graduation, String employed, String introduce,
			String filename); 
	
	 
	}
 