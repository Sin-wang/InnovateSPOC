package com.base.Dao;

import java.util.List;

import com.base.Po.internship;
import com.base.Po.internshipList;

public interface InternshipDao {

	public int addinternship(String studentId,String address,String begin,String end,String description);
	
	public internshipList query_internship(Integer size, Integer pageindex,
			String columnName, String orderDir, String searchValue);
	
	public String delInternship(String str);
	
	public void updateInternship(int id,String begin,String end,String description);
	
	public List<internship> get_internship(String sid);
}
