package com.base.Po;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Company {
	@Id
	private int id;
	private String title;
	private String photo;
	private String gname;
	
	public Company(){
		super();
	}
	
	public Company(int id,String title,String photo,String gname){
		super();
		this.id=id;
		this.title=title;
		this.photo=photo;
		this.gname=gname;
		
	}
	
	public int getId(){
		return id;
	}
	
	public void setId(int id){
		this.id=id;
	}
	
	public String getTitle(){
		return title;
	}
	
	public void setTitle(String title){
		this.title=title;
	}
	
	public String getPhoto(){
		return photo;
	}
	
	public void setPhoto(String photo){
		this.photo=photo;
	}
	
	public String getGname(){
		return gname;
	}
	
	public void setGname(String gname){
		this.gname=gname;
	}
}
