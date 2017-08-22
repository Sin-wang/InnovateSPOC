package com.base.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.Dao.HobbysDao;
import com.base.Po.hobbyList;
import com.base.Po.hobbys;
import com.base.Service.HobbysService;

@Service("HobbysService")
public class HobbysServiceImpl implements HobbysService{

	@Autowired
	private HobbysDao hobbysDao;
	
	@Override
	public int addhobby(String studentId, String hobby, String begin,
			String end, String description) {
		// TODO Auto-generated method stub
		int flag = hobbysDao.addhobbys(studentId, hobby, begin, end, description);
		return flag;
	}

	@Override
	public hobbyList query_hobby(Integer size, Integer pageindex, int order,
			String orderDir, String searchValue) {
		// TODO Auto-generated method stub
		String columnName = "";
		if (order == 1) {
		    columnName = "id";
		} else if (order == 2) {
		    columnName = "name";
		}
		hobbyList list = hobbysDao.query_hobby(size, pageindex, columnName, orderDir, searchValue);
		return list;
	}

	@Override
	public String delHobby(String str) {
		// TODO Auto-generated method stub
		String message= hobbysDao.delHobby(str);
		return message;
	}

	@Override
	public void updateHobby(int id, String begin, String end, String description) {
		// TODO Auto-generated method stub
		hobbysDao.updateHobby(id, begin, end, description);
	}

	@Override
	public List<hobbys> get_hobbys(String sid) {
		// TODO Auto-generated method stub
		List<hobbys> list = hobbysDao.get_hobbys(sid);
		return list;
	}

}
