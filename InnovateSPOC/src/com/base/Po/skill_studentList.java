package com.base.Po;

import java.util.List;

public class skill_studentList {

	private List<skill_student> data;
    private int recordsTotal;
	public skill_studentList() {
		super();
		// TODO Auto-generated constructor stub
	}
	public skill_studentList(List<skill_student> data, int recordsTotal) {
		super();
		this.data = data;
		this.recordsTotal = recordsTotal;
	}
	public List<skill_student> getData() {
		return data;
	}
	public void setData(List<skill_student> data) {
		this.data = data;
	}
	public int getRecordsTotal() {
		return recordsTotal;
	}
	public void setRecordsTotal(int recordsTotal) {
		this.recordsTotal = recordsTotal;
	}
    
    
}
