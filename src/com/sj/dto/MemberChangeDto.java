package com.sj.dto;

public class MemberChangeDto {
	private String id;
	private String pw;
	private String nick;
	private String p_number;
	private String email;
	private String birth;
	private String gender;
	private String lifetime;
	private String e_consent;
	private String sms_consent;
	
	public MemberChangeDto() {}
	
	public MemberChangeDto(String id) {
		this.id = id;
	}

	public MemberChangeDto(String pw, 
		String nick,String p_number, String email, 
			String birth, String gender,
			String lifetime, String e_consent, 
			String sms_consent,String id) {
		this.pw=pw;
		this.nick=nick;
		this.p_number = p_number;
		this.email = email;
		this.birth = birth;
		this.gender = gender;
		this.lifetime = lifetime;
		this.e_consent = e_consent;
		this.sms_consent = sms_consent;
		this.id = id;
	}
	public MemberChangeDto( 
			String nick,String p_number, String email, 
			String birth, String gender,
			String lifetime, String e_consent, 
			String sms_consent,String id) {
		this.nick=nick;
		this.p_number = p_number;
		this.email = email;
		this.birth = birth;
		this.gender = gender;
		this.lifetime = lifetime;
		this.e_consent = e_consent;
		this.sms_consent = sms_consent;
		this.id = id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}
	
	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getP_number() {
		return p_number;
	}

	public void setP_number(String p_number) {
		this.p_number = p_number;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getLifetime() {
		return lifetime;
	}

	public void setLifetime(String lifetime) {
		this.lifetime = lifetime;
	}

	public String getE_consent() {
		return e_consent;
	}

	public void setE_consent(String e_consent) {
		this.e_consent = e_consent;
	}

	public String getSms_consent() {
		return sms_consent;
	}

	public void setSms_consent(String sms_consent) {
		this.sms_consent = sms_consent;
	}
	

	
	
}
