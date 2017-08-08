/**
 * 
 */
package com.base.Po;

import java.util.List;


/**
 * @author 鸡毛大大
 *
 */
public class personnelList {
	  private int recordsTotal;
	  private List<project_personnel> data;
	  
	  
	  
	public personnelList() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public personnelList(int recordsTotal, List<project_personnel> data) {
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
	public List<project_personnel> getData() {
		return data;
	}
	public void setData(List<project_personnel> data) {
		this.data = data;
	}
	  
	  
	  
	  
}
