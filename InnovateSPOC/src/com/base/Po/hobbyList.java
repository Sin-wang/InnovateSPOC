package com.base.Po;

import java.util.List;

public class hobbyList {

	private List<hobbys> data;
    private int recordsTotal;
	public hobbyList() {
		super();
		// TODO Auto-generated constructor stub
	}
	public hobbyList(List<hobbys> data, int recordsTotal) {
		super();
		this.data = data;
		this.recordsTotal = recordsTotal;
	}
	public List<hobbys> getData() {
		return data;
	}
	public void setData(List<hobbys> data) {
		this.data = data;
	}
	public int getRecordsTotal() {
		return recordsTotal;
	}
	public void setRecordsTotal(int recordsTotal) {
		this.recordsTotal = recordsTotal;
	}
    
    
}
