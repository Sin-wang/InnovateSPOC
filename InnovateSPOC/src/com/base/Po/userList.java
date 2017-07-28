package com.base.Po;

import java.util.List;

public class userList {

	private List<User> data;
    private int recordsTotal;
	public userList() {
		super();
		// TODO Auto-generated constructor stub
	}
	public userList(List<User> data, int recordsTotal) {
		super();
		this.data = data;
		this.recordsTotal = recordsTotal;
	}
	public List<User> getData() {
		return data;
	}
	public void setData(List<User> data) {
		this.data = data;
	}
	public int getRecordsTotal() {
		return recordsTotal;
	}
	public void setRecordsTotal(int recordsTotal) {
		this.recordsTotal = recordsTotal;
	}
    
    
}
