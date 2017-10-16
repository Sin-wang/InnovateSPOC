package com.base.Po;

import javax.persistence.Id;

public class EmployeeStudent {
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
	public String getSid() {
		return sid;
	}
	public EmployeeStudent(String sid, String sname, String student_introduce,
			String sex, String headshot, String chinese_address,
			String english_address, String phone, String qq,
			String school_year, String major, String graduation,
			String employed, String gname, int gid, int id, String company,
			String salary, String workin, String graduation_year,
			String excellence) {
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
		this.id = id;
		this.company = company;
		this.salary = salary;
		this.workin = workin;
		this.graduation_year = graduation_year;
		this.excellence = excellence;
	}
	public EmployeeStudent() {
		// TODO Auto-generated constructor stub
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getWorkin() {
		return workin;
	}
	public void setWorkin(String workin) {
		this.workin = workin;
	}
	public String getGraduation_year() {
		return graduation_year;
	}
	public void setGraduation_year(String graduation_year) {
		this.graduation_year = graduation_year;
	}
	public String getExcellence() {
		return excellence;
	}
	public void setExcellence(String excellence) {
		this.excellence = excellence;
	}
	private int id;//��ҵ��id
	private String company;//���ڹ�˾
	private String salary;//��н
	private String workin;//���¹���
	private String graduation_year;//��ҵ���
	private String excellence;//�Ƿ�����

}
