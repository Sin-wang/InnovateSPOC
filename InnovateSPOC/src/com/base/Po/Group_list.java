package com.base.Po;

import java.util.List;

public class Group_list {
	private List<student_group> data;
    private int recordsTotal;
	public Group_list() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Group_list(List<student_group> data, int recordsTotal) {
		super();
		this.data = data;
		this.recordsTotal = recordsTotal;
	}
	public List<student_group> getData() {
		return data;
	}
	public void setData(List<student_group> list) {
		this.data = list;
	}
	public int getRecordsTotal() {
		return recordsTotal;
	}
	public void setRecordsTotal(int recordsTotal) {
		this.recordsTotal = recordsTotal;
	}
}
