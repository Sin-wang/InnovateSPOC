package com.base.Po;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Company {
	@Id
	private String title;
	private String photo;
	
	public Company(){
		super();
	}
	
	public Company(String title,String photo){
		super();
		this.title=title;
		this.photo=photo;
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
}
