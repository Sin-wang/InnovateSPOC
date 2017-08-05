package com.base.Po;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class skill_student {

	@Id
	private int id;//����ѧ���id
	private String sid;//ѧ��id
	private String sname;
	private String kid;//����id
	private String skill_name;
	private String skill_exp;//����ֵ
	
	public skill_student() {
		super();
		// TODO Auto-generated constructor stub
	}

	public skill_student(int id, String sid, String sname, String kid,
			String skill_name, String skill_exp) {
		super();
		this.id = id;
		this.sid = sid;
		this.sname = sname;
		this.kid = kid;
		this.skill_name = skill_name;
		this.skill_exp = skill_exp;
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

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getKid() {
		return kid;
	}

	public void setKid(String kid) {
		this.kid = kid;
	}

	public String getSkill_name() {
		return skill_name;
	}

	public void setSkill_name(String skill_name) {
		this.skill_name = skill_name;
	}

	public String getSkill_exp() {
		return skill_exp;
	}

	public void setSkill_exp(String skill_exp) {
		this.skill_exp = skill_exp;
	}


}
