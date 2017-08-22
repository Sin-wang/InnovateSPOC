package com.base.Po;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class students {

	@Id
	private String sid;//ѧ��id
	private String sname;//ѧ������
	private String student_introduce;//���ҽ���
	private String sex;//�Ա�
	private String headshot;//ͷ�񣨵�ַ��
	private String chinese_address;//���ľ�ס��ַ
	private String english_address;//Ӣ�ľ�ס��ַ
	private String phone;//��ϵ�绰
	private String qq;//qq��
	private String school_year;//��ѧ���
	private String major;//רҵ
	private String graduation;//�Ƿ��ҵ
	private String employed;//�Ƿ�ӦƸ
	private String gname;
	private int gid;
	
	public students() {
		super();
		// TODO Auto-generated constructor stub
	}

	public students(String sid, String sname, String student_introduce,
			String sex, String headshot, String chinese_address,
			String english_address, String phone, String qq,
			String school_year, String major, String graduation,
			String employed, String gname, int gid) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.student_introduce = student_introduce;
		this.sex = sex;
		this.headshot = headshot;
		this.chinese_address = chinese_address;
		this.english_address = english_address;
		this.phone = phone;
		this.qq = qq;
		this.school_year = school_year;
		this.major = major;
		this.graduation = graduation;
		this.employed = employed;
		this.gname = gname;
		this.gid = gid;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getStudent_introduce() {
		return student_introduce;
	}

	public void setStudent_introduce(String student_introduce) {
		this.student_introduce = student_introduce;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getHeadshot() {
		return headshot;
	}

	public void setHeadshot(String headshot) {
		this.headshot = headshot;
	}

	public String getChinese_address() {
		return chinese_address;
	}

	public void setChinese_address(String chinese_address) {
		this.chinese_address = chinese_address;
	}

	public String getEnglish_address() {
		return english_address;
	}

	public void setEnglish_address(String english_address) {
		this.english_address = english_address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getSchool_year() {
		return school_year;
	}

	public void setSchool_year(String school_year) {
		this.school_year = school_year;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getGraduation() {
		return graduation;
	}

	public void setGraduation(String graduation) {
		this.graduation = graduation;
	}

	public String getEmployed() {
		return employed;
	}

	public void setEmployed(String employed) {
		this.employed = employed;
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
