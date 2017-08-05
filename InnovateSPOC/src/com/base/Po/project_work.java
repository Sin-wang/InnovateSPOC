package com.base.Po;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class project_work {

	@Id
	private int pid;//��Ŀ��Ʒ��id
	private String gid;//�������id
	private String project_name;//��Ŀ��
	private String project_introduce;//��Ŀ��Ʒ����
	private String project_address;//��Ŀ��ַ
	private String photo_address;//��Ŀ��ͼ����ַ��
	private String wid;//��Ʒ���
	private String expression;//��﷽ʽ���Ƿ�����Ƶ�����Ǿ�֡ͼ��
	private String best_work;//�Ƿ���������Ʒ
	
	public project_work() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public project_work(int pid, String gid, String project_name,
			String project_introduce, String project_address,
			String photo_address, String wid, String expression, String best_work) {
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
	
	
}
