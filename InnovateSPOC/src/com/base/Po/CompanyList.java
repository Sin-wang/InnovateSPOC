package com.base.Po;

import java.util.List;

public class CompanyList {
	private List<Company> data;
    private int recordsTotal;
	public CompanyList() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CompanyList(List<Company> data, int recordsTotal) {
		super();
		this.data = data;
		this.recordsTotal = recordsTotal;
	}
	public List<Company> getData() {
		return data;
	}
	public void setData(List<Company> data) {
		this.data = data;
	}
	public int getRecordsTotal() {
		return recordsTotal;
	}
	public void setRecordsTotal(int recordsTotal) {
		this.recordsTotal = recordsTotal;
	}
}
