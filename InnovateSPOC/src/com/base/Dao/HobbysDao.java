package com.base.Dao;

import java.util.List;

import com.base.Po.hobbyList;
import com.base.Po.hobbys;

public interface HobbysDao {

	public int addhobbys(String studentId,String hobby,String begin,String end,String description);
	
	public hobbyList query_hobby(Integer size, Integer pageindex,
			String columnName, String orderDir, String searchValue);
	
	public String delHobby(String str);
	
	public void updateHobby(int id,String begin,String end,String description);
	
	public List<hobbys> get_hobbys(String sid);
}
