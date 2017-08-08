package com.base.Po;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class project_personnel {

	@Id
	private int id;//��Ŀ��Ա��id
	private String sid;//学生id
	private String pid;//��Ŀ��Ʒid
	private String participants;//������Ա
	private String header;//�Ƿ�����
	
	public project_personnel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public project_personnel(int id, String sid, String pid, String participants,
			String header) {
		super();
		this.id = id;
		this.sid = sid;
		this.pid = pid;
		this.participants = participants;
		this.header = header;
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

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getParticipants() {
		return participants;
	}

	public void setParticipants(String participants) {
		this.participants = participants;
	}

	public String getHeader() {
		return header;
	}

	public void setHeader(String header) {
		this.header = header;
	}
	
	
}
