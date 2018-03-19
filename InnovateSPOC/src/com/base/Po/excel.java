package com.base.Po;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class excel {

	@Id
	private int id;
	private String name;
	private String ard;
	private String dates;
	private String ardrate;
	private int meeting;
	private int ardpep;
	
	
	public excel() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public excel(int id, String name, String ard, String dates,
			String ardrate, int meeting, int ardpep) {
		super();
		this.id = id;
		this.name = name;
		this.ard = ard;
		this.dates = dates;
		this.ardrate = ardrate;
		this.meeting = meeting;
		this.ardpep = ardpep;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getArd() {
		return ard;
	}
	public void setArd(String ard) {
		this.ard = ard;
	}
	public String getDates() {
		return dates;
	}
	public void setDates(String dates) {
		this.dates = dates;
	}
	public String getArdrate() {
		return ardrate;
	}
	public void setArdrate(String ardrate) {
		this.ardrate = ardrate;
	}
	public int getMeeting() {
		return meeting;
	}
	public void setMeeting(int meeting) {
		this.meeting = meeting;
	}
	public int getArdpep() {
		return ardpep;
	}
	public void setArdpep(int ardpep) {
		this.ardpep = ardpep;
	}
	
	
}
