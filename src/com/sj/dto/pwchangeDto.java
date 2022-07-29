package com.sj.dto;

public class pwchangeDto {
	String id;
	String password;
	
	public pwchangeDto(String password,String id) {
		this.password =password;
		this.id = id;
	}

	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	
}
