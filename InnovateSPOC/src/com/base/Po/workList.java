/**
 * 
 */
package com.base.Po;

import java.util.List;


/**
 * @author 鸡毛大大
 *
 */
public class workList {
	  private int recordsTotal;
	  private List<project_work> data;
	  
	  
	  
	public workList() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public workList(int recordsTotal, List<project_work> data) {
		super();
		this.recordsTotal = recordsTotal;
		this.data = data;
	}

	public int getRecordsTotal() {
		return recordsTotal;
	}
	public void setRecordsTotal(int recordsTotal) {
		this.recordsTotal = recordsTotal;
	}
	public List<project_work> getData() {
		return data;
	}
	public void setData(List<project_work> data) {
		this.data = data;
	}
	  
	  
	  
	  
}
