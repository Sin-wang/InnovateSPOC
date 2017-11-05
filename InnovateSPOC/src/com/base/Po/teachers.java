package com.base.Po;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class teachers {

	@Id
    private String tid;//��ʦid
	private String sex;//性别
	private String tname;//��ʦ����
	private String teacher_introduce;//���ҽ���
	private String photo_address;//��Ƭ����ַ��
	private String gname;
	private int gid;
	private String position;
	public teachers(String tid, String sex, String tname,
			String teacher_introduce, String photo_address, String gname,
			int gid, String position) {
		super();
		this.tid = tid;
		this.sex = sex;
		this.tname = tname;
		this.teacher_introduce = teacher_introduce;
		this.photo_address = photo_address;
		this.gname = gname;
		this.gid = gid;
		this.position = position;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public teachers() {
		super();
		// TODO Auto-generated constructor stub
	}
	public teachers(String tid, String sex, String tname,
			String teacher_introduce, String photo_address, String gname,
			int gid) {
		super();
		this.tid = tid;
		this.sex = sex;
		this.tname = tname;
		this.teacher_introduce = teacher_introduce;
		this.photo_address = photo_address;
		this.gname = gname;
		this.gid = gid;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTeacher_introduce() {
		return teacher_introduce;
	}
	public void setTeacher_introduce(String teacher_introduce) {
		this.teacher_introduce = teacher_introduce;
	}
	public String getPhoto_address() {
		return photo_address;
	}
	public void setPhoto_address(String photo_address) {
		this.photo_address = photo_address;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	
	
	
}