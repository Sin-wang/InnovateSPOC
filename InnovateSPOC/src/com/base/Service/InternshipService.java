package com.base.Service;

import java.util.List;

import com.base.Po.internship;
import com.base.Po.internshipList;

public interface InternshipService {

	public int addinternship(String studentId,String address,String begin,String end,String description);
	
	public internshipList query_internship(Integer size, Integer pageindex,
			int order, String orderDir, String searchValue);
	
	public String delInternship(String str);
	
	public void updateInternship(int id,String begin,String end, String description);
	
	public List<internship> get_internship(String sid);

	public internshipList query_Uinternship(String sid, Integer size,
			Integer pageindex, int order, String orderDir, String searchValue);
}
