package com.base.Po;

public class WorkInfo {
	private int pid;//��Ŀ��Ʒ��id
	private String gid;//�������id
	private String project_name;//��Ŀ��
	private String project_introduce;//��Ŀ��Ʒ����
	private String project_address;//��Ŀ��ַ
	private String photo_address;//��Ŀ��ͼ����ַ��
	private String wid;//��Ʒ���
	private String expression;
	private String best_work;
	private String sid;//学生id
	private String participants;//������Ա
	private String header;//�Ƿ�����
	private String work_name;//�����
	private String gname;
	public WorkInfo(int pid, String gid, String project_name,
			String project_introduce, String project_address,
			String photo_address, String wid, String expression,
			String best_work, String sid, String participants, String header,
			String work_name, String gname) {
		super();
		this.pid = pid;
		this.gid = gid;
		this.project_name = project_name;
		this.project_introduce = project_introduce;
		this.project_address = project_address;
		this.photo_address = photo_address;
		this.wid = wid;
		this.expression = expression;
		this.best_work = best_work;
		this.sid = sid;
		this.participants = participants;
		this.header = header;
		this.work_name = work_name;
		this.gname = gname;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public WorkInfo(int pid, String gid, String project_name,
			String project_introduce, String project_address,
			String photo_address, String wid, String expression,
			String best_work, String sid, String participants, String header,
			String work_name) {
		super();
		this.pid = pid;
		this.gid = gid;
		this.project_name = project_name;
		this.project_introduce = project_introduce;
		this.project_address = project_address;
		this.photo_address = photo_address;
		this.wid = wid;
		this.expression = expression;
		this.best_work = best_work;
		this.sid = sid;
		this.participants = participants;
		this.header = header;
		this.work_name = work_name;
	}
	public WorkInfo() {
		// TODO Auto-generated constructor stub
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
	}
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}
	public String getProject_introduce() {
		return project_introduce;
	}
	public void setProject_introduce(String project_introduce) {
		this.project_introduce = project_introduce;
	}
	public String getProject_address() {
		return project_address;
	}
	public void setProject_address(String project_address) {
		this.project_address = project_address;
	}
	public String getPhoto_address() {
		return photo_address;
	}
	public void setPhoto_address(String photo_address) {
		this.photo_address = photo_address;
	}
	public String getWid() {
		return wid;
	}
	public void setWid(String wid) {
		this.wid = wid;
	}
	public String getExpression() {
		return expression;
	}
	public void setExpression(String expression) {
		this.expression = expression;
	}
	public String getBest_work() {
		return best_work;
	}
	public void setBest_work(String best_work) {
		this.best_work = best_work;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
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
	public String getWork_name() {
		return work_name;
	}
	public void setWork_name(String work_name) {
		this.work_name = work_name;
	}
	
	
}
