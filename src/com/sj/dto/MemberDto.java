package com.sj.dto;
public class MemberDto{
	private String id;
	private String pw;
	private String name;
	private String nick;
	private String p_number;
	private String email;
	private String birth;
	private String gender;
	private String life_member;
	private String consent;
	private String person_consent;
	private String email_consent;
	private String sms_consent;
	private String freind_id;
	private int M_rating;
	
	
	public MemberDto() { }
	
	public MemberDto(String id, String pw) { 
		this.id=id;
		this.pw=pw;
	}
	public MemberDto(String id) {
		this.id=id;
	}
	public MemberDto(int M_rating) {
		this.M_rating=M_rating;
	}

	public MemberDto(String id, String pw, String name, String nick, String p_number, String email, String birth,
			String gender, String life_member, String consent, String person_consent, String email_consent,
			String sms_consent, String freind_id) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.nick = nick;
		this.p_number = p_number;
		this.email = email;
		this.birth = birth;
		this.gender = gender;
		this.life_member = life_member;
		this.consent = consent;
		this.person_consent = person_consent;
		this.email_consent = email_consent;
		this.sms_consent = sms_consent;
		this.freind_id = freind_id;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getLife_member() {
		return life_member;
	}

	public void setLife_member(String life_member) {
		this.life_member = life_member;
	}

	public String getConsent() {
		return consent;
	}

	public void setConsent(String consent) {
		this.consent = consent;
	}

	public String getPerson_consent() {
		return person_consent;
	}

	public void setPerson_consent(String person_consent) {
		this.person_consent = person_consent;
	}

	public String getEmail_consent() {
		return email_consent;
	}

	public void setEmail_consent(String email_consent) {
		this.email_consent = email_consent;
	}

	public String getSms_consent() {
		return sms_consent;
	}

	public void setSms_consent(String sms_consent) {
		this.sms_consent = sms_consent;
	}

	public String getFreind_id() {
		return freind_id;
	}

	public void setFreind_id(String freind_id) {
		this.freind_id = freind_id;
	}

	public int getM_rating() {
		return M_rating;
	}

	public void setM_rating(int m_rating) {
		M_rating = m_rating;
	}
	

	
	
	

	
}
