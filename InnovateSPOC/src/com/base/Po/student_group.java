package com.base.Po;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class student_group {

	@Id
	private int id;//ѧ��������
	private int gid;//���gid
	private String gname;
	public student_group() {
		super();
		// TODO Auto-generated constructor stub
	}
	public student_group( int gid,String gname) {
		super();
		
		this.gid = gid;
		
		this.gname=gname;
	}
	
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	
	public String getGname(){
		return gname;
	}
	public void setGname(String gname){
		this.gname=gname;
	}
	
}
