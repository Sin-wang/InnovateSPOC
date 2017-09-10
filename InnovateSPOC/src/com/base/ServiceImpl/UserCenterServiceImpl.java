package com.base.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.Dao.EmploymentManageDao;
import com.base.Dao.UserCenterDao;
import com.base.Po.teachers;
import com.base.Po.userCenter;
import com.base.Service.UserCenterService;

@Service("UserCenterService")

public class UserCenterServiceImpl implements UserCenterService {
	@Autowired
	private UserCenterDao usercenterdao;
	

	@Override
	public List<userCenter> getPersonInfo(String id) {
		// TODO Auto-generated method stub
		List<userCenter> list = usercenterdao.getPersonInfo(id);
		return list;
	}


	@Override
	public void update(String id, String userType, String name, String sex,
			String phone, String qq, String major, String school_year,
			String possword, String chinese_address, String english_address,
			String graduation, String employed, String introduce,
			String filename) {
		// TODO Auto-generated method stub
		if(Integer.parseInt(userType) == 1){
			usercenterdao.updateTea(id,name,sex, introduce,filename);
		}else if(Integer.parseInt(userType) == 2){
			usercenterdao.updateStu(id, name,sex, phone,qq,major,school_year, possword,chinese_address,english_address,graduation,employed, introduce,filename);
		}
	}

}
