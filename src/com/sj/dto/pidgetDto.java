package com.sj.dto;

public class pidgetDto {
	String p_number;
	String name;

	public pidgetDto() {}
	
	public pidgetDto(String p_number,String name) {
		this.p_number = p_number;
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getP_number() {
		return p_number;
	}

	public void setP_number(String p_number) {
		this.p_number = p_number;
	}

	
	
}
