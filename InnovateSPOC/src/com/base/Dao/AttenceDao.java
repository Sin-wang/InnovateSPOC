package com.base.Dao;

import java.util.List;

import com.base.Po.excel;

public interface AttenceDao {

	public List<excel> getAttenceData();
	
	public int judge_insert_attence(String name, String attenceTime);

}
