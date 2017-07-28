package com.base.Po;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class User {
    
    @Id
    private String uid;
    private String username;
    private String password;
    
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String uid, String username, String password) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
   
}
