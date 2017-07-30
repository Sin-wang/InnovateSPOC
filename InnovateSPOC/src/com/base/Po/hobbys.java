package com.base.Po;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class hobbys {

	@Id
	private int id;//��Ȥ���ñ�id
	private String sid;//ѧ��id
	private String hobby;//�������
	private String begin_time;//��ʼʱ��
	private String end_time;//����ʱ��
	private String hobby_description;//��������
	private String sname;
	
	public hobbys() {
		super();
		// TODO Auto-generated constructor stub
	}

	public hobbys(int id, String sid, String hobby, String begin_time,
			String end_time, String hobby_description, String sname) {
		super();
		this.id = id;
		this.sid = sid;
		this.hobby = hobby;
		this.begin_time = begin_time;
		this.end_time = end_time;
		this.hobby_description = hobby_description;
		this.sname = sname;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public String getBegin_time() {
		return begin_time;
	}

	public void setBegin_time(String begin_time) {
		this.begin_time = begin_time;
	}

	public String getEnd_time() {
		return end_time;
	}

	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}

	public String getHobby_description() {
		return hobby_description;
	}

	public void setHobby_description(String hobby_description) {
		this.hobby_description = hobby_description;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	
	
}
