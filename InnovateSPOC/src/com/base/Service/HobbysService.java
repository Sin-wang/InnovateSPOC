package com.base.Service;

import com.base.Po.hobbyList;

public interface HobbysService {

	public int addhobby(String studentId,String hobby,String begin,String end,String description);
	
	public hobbyList query_hobby(Integer size, Integer pageindex,
			int order, String orderDir, String searchValue);
	
	public String delHobby(String str);
	
	public void updateHobby(int id,String begin,String end, String description);
}
