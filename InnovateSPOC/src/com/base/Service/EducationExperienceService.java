package com.base.Service;

import java.util.List;

import com.base.Po.educationList;
import com.base.Po.education_experience;

public interface EducationExperienceService {

	public int addeducation(String studentId, String address, String begin,
			String end, String description);

	public educationList query_education(Integer size, Integer pageindex,
			int order, String orderDir, String searchValue);

	public String delEducation(String str);
	
	public void updateEducation(int id,String begin,String end, String description);

	public List<education_experience> get_education_experience(String sid);
}
