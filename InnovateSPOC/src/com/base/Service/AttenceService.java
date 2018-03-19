package com.base.Service;

import com.base.Po.excel;

import java.util.List;
public interface AttenceService {
	
	public List<excel> getAttenceData();
	
	public int judge_insert_attence(String name,String attenceTime);

}
