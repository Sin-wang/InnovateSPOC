/**
 * 
 */
package com.base.Po;

import javax.persistence.Id;

/**
 * @author 鸡毛大大
 *
 */
public class userCenter {
	@Id
	private String sid;
	private String sname;//ѧ������
	private String student_introduce;//���ҽ���
	private String sex;//�Ա�
	private String chinese_address;//���ľ�ס��ַ
	private String english_address;//Ӣ�ľ�ס��ַ
	private String phone;//��ϵ�绰
	private String headshot;
	private String qq;//qq��
	private String school_year;//��ѧ���
	private String major;//רҵ
	private String graduation;//�Ƿ��ҵ
	private String employed;//�Ƿ�ӦƸ
    private String tid;//��ʦid
	private String tname;//��ʦ����
	private String teacher_introduce;//���ҽ���
	private String photo_address;//��Ƭ����ַ��
	private int TSflag;
	private String password;
	private String gid;
	public userCenter(String sid, String sname, String student_introduce,
			String sex, String chinese_address, String english_address,
			String phone, String headshot, String qq, String school_year,
			String major, String graduation, String employed, String tid,
			String tname, String teacher_introduce, String photo_address,
			int tSflag, String password, String gid) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.student_introduce = student_introduce;
		this.sex = sex;
		this.chinese_address = chinese_address;
		this.english_address = english_address;
		this.phone = phone;
		this.headshot = headshot;
		this.qq = qq;
		this.school_year = school_year;
		this.major = major;
		this.graduation = graduation;
		this.employed = employed;
		this.tid = tid;
		this.tname = tname;
		this.teacher_introduce = teacher_introduce;
		this.photo_address = photo_address;
		TSflag = tSflag;
		this.password = password;
		this.gid = gid;
	}
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public userCenter(String sid, String sname, String student_introduce,
			String sex, String chinese_address, String english_address,
			String phone, String headshot, String qq, String school_year,
			String major, String graduation, String employed, String tid,
			String tname, String teacher_introduce, String photo_address,
			int tSflag, String password) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.student_introduce = student_introduce;
		this.sex = sex;
		this.chinese_address = chinese_address;
		this.english_address = english_address;
		this.phone = phone;
		this.headshot = headshot;
		this.qq = qq;
		this.school_year = school_year;
		this.major = major;
		this.graduation = graduation;
		this.employed = employed;
		this.tid = tid;
		this.tname = tname;
		this.teacher_introduce = teacher_introduce;
		this.photo_address = photo_address;
		TSflag = tSflag;
		this.password = password;
	}
	public userCenter() {
		super();
		// TODO Auto-generated constructor stub
	}
	public userCenter(String sid, String sname, String student_introduce,
			String sex, String chinese_address, String english_address,
			String phone, String qq, String school_year, String major,
			String graduation, String employed, String tid, String tname,
			String teacher_introduce, String photo_address) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.student_introduce = student_introduce;
		this.sex = sex;
		this.chinese_address = chinese_address;
		this.english_address = english_address;
		this.phone = phone;
		this.qq = qq;
		this.school_year = school_year;
		this.major = major;
		this.graduation = graduation;
		this.employed = employed;
		this.tid = tid;
		this.tname = tname;
		this.teacher_introduce = teacher_introduce;
		this.photo_address = photo_address;
	}
	public userCenter(String sid, String sname, String student_introduce,
			String sex, String chinese_address, String english_address,
			String phone, String headshot, String qq, String school_year,
			String major, String graduation, String employed, String tid,
			String tname, String teacher_introduce, String photo_address,
			int tSflag) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.student_introduce = student_introduce;
		this.sex = sex;
		this.chinese_address = chinese_address;
		this.english_address = english_address;
		this.phone = phone;
		this.headshot = headshot;
		this.qq = qq;
		this.school_year = school_year;
		this.major = major;
		this.graduation = graduation;
		this.employed = employed;
		this.tid = tid;
		this.tname = tname;
		this.teacher_introduce = teacher_introduce;
		this.photo_address = photo_address;
		TSflag = tSflag;
	}
	public String getHeadshot() {
		return headshot;
	}
	public void setHeadshot(String headshot) {
		this.headshot = headshot;
	}
	public int getTSflag() {
		return TSflag;
	}
	public void setTSflag(int tSflag) {
		TSflag = tSflag;
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
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
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
	
	
}
