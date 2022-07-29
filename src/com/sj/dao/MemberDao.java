package com.sj.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.sj.dto.MemberChangeDto;
import com.sj.dto.MemberDto;
import com.sj.dto.eidgetDto;
import com.sj.dto.nickgetDto;
import com.sj.dto.pidgetDto;
import com.sj.dto.pointplusDto;
import com.sj.dto.pwchangeDto;

public class MemberDao {
	public boolean loginCheck(MemberDto member) throws SQLException{
		Connection conn= DBConnection.getConnection();
		String sql="Select count(*) nick from member where id=? and password=?";
		PreparedStatement pstmt =conn.prepareStatement(sql);
		pstmt.setString(1, member.getId());
		pstmt.setString(2, member.getPw());
		ResultSet rs = pstmt.executeQuery();
		int result = 0;
		while(rs.next()) {
			result=rs.getInt(1);
		}
		rs.close();
		pstmt.close();
		//result:1 --->로그인 성공(0---> 실패)
		return result == 1;
	}
	public String nick(MemberDto member) throws SQLException{
		Connection conn= DBConnection.getConnection();
		String sql1= "select nick from member where id=? and password =?";
		PreparedStatement pstmt =conn.prepareStatement(sql1);
		pstmt.setString(1, member.getId());
		pstmt.setString(2, member.getPw());
		ResultSet rs = pstmt.executeQuery();
		String nick= null;
		while(rs.next()) {
			nick=rs.getString("nick");
		}
		rs.close();
		pstmt.close();
		return nick;
	}
	
	public boolean memberjoin(MemberDto member) throws SQLException{
		String sql="insert into member values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Connection conn= DBConnection.getConnection();
		PreparedStatement pstmt1 =conn.prepareStatement(sql);
		pstmt1.setString(1,member.getId());
		pstmt1.setString(2,member.getPw());
		pstmt1.setString(3,member.getName());
		pstmt1.setString(4,member.getNick());
		pstmt1.setString(5,member.getP_number());
		pstmt1.setString(6,member.getEmail());
		pstmt1.setString(7,member.getBirth());
		pstmt1.setString(8,member.getGender());
		pstmt1.setString(9,member.getConsent());
		pstmt1.setString(10,member.getPerson_consent());
		pstmt1.setString(11,member.getSms_consent());
		pstmt1.setString(12,member.getEmail_consent());
		pstmt1.setString(13,member.getLife_member());
		pstmt1.setString(14,member.getFreind_id());
		pstmt1.setInt(15, 1);
		pstmt1.setInt(16, 0);
		pstmt1.setInt(17, 0);
		pstmt1.executeUpdate();
		pstmt1.close();
		return true;
	}
	public String pidget(pidgetDto p_idget) throws SQLException{
		Connection conn= DBConnection.getConnection();
		String sql1= "select id from member where p_number=? and name=?";
		PreparedStatement pstmt =conn.prepareStatement(sql1);
		pstmt.setString(1, p_idget.getP_number());
		pstmt.setString(2, p_idget.getName());
		ResultSet rs = pstmt.executeQuery();
		String id=null;
		while(rs.next()) {
		 id=rs.getString("id");
		}
		rs.close();
		pstmt.close();
		return id;
	}
	public String eidget(eidgetDto e_idget) throws SQLException{
		Connection conn= DBConnection.getConnection();
		String sql1= "select id from member where email=? and name=?";
		PreparedStatement pstmt =conn.prepareStatement(sql1);
		pstmt.setString(1, e_idget.getEmail());
		pstmt.setString(2, e_idget.getName());
		ResultSet rs = pstmt.executeQuery();
		String id= null;
		while(rs.next()) {
			id=rs.getString("id");
		}
		rs.close();
		pstmt.close();
		return id;
	}
	public boolean idget(MemberDto idget) throws SQLException{
		Connection conn= DBConnection.getConnection();
		String sql1= "select count(*) from member where id=?";
		PreparedStatement pstmt =conn.prepareStatement(sql1);
		pstmt.setString(1, idget.getId());
		ResultSet rs = pstmt.executeQuery();
		int bl = 0;
		while(rs.next()) {
			bl=rs.getInt(1);
		}
		rs.close();
		pstmt.close();
		return bl == 1;
	}
	public boolean nickget(nickgetDto nickget) throws SQLException{
		Connection conn= DBConnection.getConnection();
		String sql= "select count(*) from member where nick=?";
		PreparedStatement pstmt =conn.prepareStatement(sql);
		pstmt.setString(1, nickget.getNick());
		ResultSet rs = pstmt.executeQuery();
		int bl1 = 0;
		while(rs.next()) {
			bl1=rs.getInt(1);
		}
		rs.close();
		pstmt.close();
		return bl1 == 1;
	}
	
	public boolean inforChange1(MemberChangeDto memberchange1) throws SQLException{
		Connection conn= DBConnection.getConnection();
		String sql1= "Update member set password=?,"
				+ "nick= ?,p_number= ?,email= ?,"
				+ "birth= ?,gender= ?,life_member= ?,"
				+ "email_consent=?,sms_consent=? where id =?";
		PreparedStatement pstmt =conn.prepareStatement(sql1);
		pstmt.setString(1,memberchange1.getPw());
		pstmt.setString(2, memberchange1.getNick());
		pstmt.setString(3, memberchange1.getP_number());
		pstmt.setString(4, memberchange1.getEmail());
		pstmt.setString(5, memberchange1.getBirth());
		pstmt.setString(6, memberchange1.getGender());
		pstmt.setString(7, memberchange1.getLifetime());
		pstmt.setString(8, memberchange1.getE_consent());
		pstmt.setString(9, memberchange1.getSms_consent());
		pstmt.setString(10, memberchange1.getId());
		pstmt.executeUpdate();
		pstmt.close();
		return true;
	}
	public boolean pointplus(pointplusDto pointplus) throws SQLException{
		Connection conn= DBConnection.getConnection();
		String sql1= "update member set point=point+500 where id=?";
		PreparedStatement pstmt =conn.prepareStatement(sql1);
		pstmt.setString(1,pointplus.getFriend_id());
		pstmt.executeUpdate();
		return true;
	}
	public boolean inforChange2(MemberChangeDto memberchange2) throws SQLException{
		Connection conn= DBConnection.getConnection();
		String sql1= "Update member set nick= ?,"
				+ "p_number= ?,"
				+ "email= ?,"
				+ "birth= ?,"
				+ "gender= ?,"
				+ "life_member= ?,"
				+ "email_consent=?,"
				+ "sms_consent=? where id =?";
		PreparedStatement pstmt =conn.prepareStatement(sql1);
		pstmt.setString(1, memberchange2.getNick());
		pstmt.setString(2, memberchange2.getP_number());
		pstmt.setString(3, memberchange2.getEmail());
		pstmt.setString(4, memberchange2.getBirth());
		pstmt.setString(5, memberchange2.getGender());
		pstmt.setString(6, memberchange2.getLifetime());
		pstmt.setString(7, memberchange2.getE_consent());
		pstmt.setString(8, memberchange2.getSms_consent());
		pstmt.setString(9, memberchange2.getId());
		pstmt.executeUpdate();
		pstmt.close();
		return true;
	}
	
	public boolean pwChange(pwchangeDto pwchange) throws SQLException{
		Connection conn= DBConnection.getConnection();
		String sql1= "Update member set password=? where id =?";
		PreparedStatement pstmt =conn.prepareStatement(sql1);
		pstmt.setString(1, pwchange.getPassword());
		pstmt.setString(2, pwchange.getId());
		pstmt.executeUpdate();
		pstmt.close();
		return true;
	}
	public String pwget(MemberChangeDto pwget) throws SQLException{
		Connection conn= DBConnection.getConnection();
		String sql1= "select * from member where id=?";
		PreparedStatement pstmt =conn.prepareStatement(sql1);
		pstmt.setString(1, pwget.getId());
		ResultSet rs = pstmt.executeQuery();
		String pw=null;
		while(rs.next()) {
			pw=rs.getString("password");
		}
		rs.close();
		pstmt.close();
		return pw;
	}
	
	public String nameget(MemberChangeDto nameget) throws SQLException{
		Connection conn= DBConnection.getConnection();
		String sql1= "select * from member where id=?";
		PreparedStatement pstmt =conn.prepareStatement(sql1);
		pstmt.setString(1, nameget.getId());
		ResultSet rs = pstmt.executeQuery();
		String name= null;
		while(rs.next()) {
			name=rs.getString("name");
		}
		rs.close();
		pstmt.close();
		return name;
	}
		public String nickget(MemberChangeDto nickget) throws SQLException{
			Connection conn= DBConnection.getConnection();
			String sql1= "select * from member where id=?";
			PreparedStatement pstmt =conn.prepareStatement(sql1);
			pstmt.setString(1, nickget.getId());
			ResultSet rs = pstmt.executeQuery();
			String nick= null;
			while(rs.next()) {
				nick=rs.getString("nick");
			}
			rs.close();
			pstmt.close();
			return nick;
		}
		public String phoneget(MemberChangeDto phoneget) throws SQLException{
			Connection conn= DBConnection.getConnection();
			String sql1= "select * from member where id=?";
			PreparedStatement pstmt =conn.prepareStatement(sql1);
			pstmt.setString(1, phoneget.getId());
			ResultSet rs = pstmt.executeQuery();
			String phone= null;
			while(rs.next()) {
				phone=rs.getString("p_number");
			}
			rs.close();
			pstmt.close();
			return phone;
		}
		public String emailget(MemberChangeDto emailget) throws SQLException{
			Connection conn= DBConnection.getConnection();
			String sql1= "select * from member where id=?";
			PreparedStatement pstmt =conn.prepareStatement(sql1);
			pstmt.setString(1, emailget.getId());
			ResultSet rs = pstmt.executeQuery();
			String email= null;
			while(rs.next()) {
				email=rs.getString("email");
			}
			rs.close();
			pstmt.close();
			return email;
		}
		public String birthget(MemberChangeDto birthget) throws SQLException{
			Connection conn= DBConnection.getConnection();
			String sql1= "select * from member where id=?";
			PreparedStatement pstmt =conn.prepareStatement(sql1);
			pstmt.setString(1, birthget.getId());
			ResultSet rs = pstmt.executeQuery();
			String birth= null;
			while(rs.next()) {
				birth=rs.getString("birth");
			}
			rs.close();
			pstmt.close();
			return birth;
		}
		public String genderget(MemberChangeDto genderget) throws SQLException{
			Connection conn= DBConnection.getConnection();
			String sql1= "select * from member where id=?";
			PreparedStatement pstmt =conn.prepareStatement(sql1);
			pstmt.setString(1, genderget.getId());
			ResultSet rs = pstmt.executeQuery();
			String gender= null;
			while(rs.next()) {
				gender=rs.getString("gender");
			}
			rs.close();
			pstmt.close();
			return gender;
		}
		public String lifetimeget(MemberChangeDto lifetimeget) throws SQLException{
			Connection conn= DBConnection.getConnection();
			String sql1= "select * from member where id=?";
			PreparedStatement pstmt =conn.prepareStatement(sql1);
			pstmt.setString(1, lifetimeget.getId());
			ResultSet rs = pstmt.executeQuery();
			String lifetime= null;
			while(rs.next()) {
				lifetime=rs.getString("life_member");
			}
			rs.close();
			pstmt.close();
			return lifetime;
		}
		public String emailconsentget(MemberChangeDto emailconsentget) throws SQLException{
			Connection conn= DBConnection.getConnection();
			String sql1= "select * from member where id=?";
			PreparedStatement pstmt =conn.prepareStatement(sql1);
			pstmt.setString(1, emailconsentget.getId());
			ResultSet rs = pstmt.executeQuery();
			String emailconsent= null;
			while(rs.next()) {
				emailconsent=rs.getString("email_consent");
			}
			rs.close();
			pstmt.close();
			return emailconsent;
		}
		public String smsconsentget(MemberChangeDto smsconsentget) throws SQLException{
			Connection conn= DBConnection.getConnection();
			String sql1= "select * from member where id=?";
			PreparedStatement pstmt =conn.prepareStatement(sql1);
			pstmt.setString(1, smsconsentget.getId());
			ResultSet rs = pstmt.executeQuery();
			String smsconsent= null;
			while(rs.next()) {
				smsconsent=rs.getString("sms_consent");
			}
			rs.close();
			pstmt.close();
			return smsconsent;
		}
		public String friendget(MemberChangeDto friendget) throws SQLException{
			Connection conn= DBConnection.getConnection();
			String sql1= "select * from member where id=?";
			PreparedStatement pstmt =conn.prepareStatement(sql1);
			pstmt.setString(1, friendget.getId());
			ResultSet rs = pstmt.executeQuery();
			String friend= null;
			while(rs.next()) {
				friend=rs.getString("friend_id");
			}
			rs.close();
			pstmt.close();
			return friend;
		}
		public int gradeget(MemberDto gradeget) throws SQLException{
			Connection conn= DBConnection.getConnection();
			String sql1= "select * from member where id=?";
			PreparedStatement pstmt =conn.prepareStatement(sql1);
			pstmt.setString(1, gradeget.getId());
			ResultSet rs = pstmt.executeQuery();
			int grade = 0;
			while(rs.next()) {
				 grade=rs.getInt("m_rating");
			}
			rs.close();
			pstmt.close();
			return grade;
		}
		public String grade(MemberDto grade) throws SQLException{
			Connection conn= DBConnection.getConnection();
			String sql1= "select * from member_rating where idx=?";
			PreparedStatement pstmt =conn.prepareStatement(sql1);
			pstmt.setInt(1, grade.getM_rating());
			ResultSet rs = pstmt.executeQuery();
			String gradestring = null;
			while(rs.next()) {
				gradestring=rs.getString("rating");
			}
			rs.close();
			pstmt.close();
			return gradestring;
		}
		public int Amountget(MemberDto amount) throws SQLException{
			Connection conn= DBConnection.getConnection();
			String sql1= "select * from member_rating where idx=?";
			PreparedStatement pstmt =conn.prepareStatement(sql1);
			pstmt.setInt(1, amount.getM_rating());
			ResultSet rs = pstmt.executeQuery();
			int stack = 0;
			while(rs.next()) {
				stack=rs.getInt("stack");
			}
			rs.close();
			pstmt.close();
			return stack;
		}
		public int pointget(MemberDto point) throws SQLException{
			Connection conn= DBConnection.getConnection();
			String sql1= "select * from member where id=?";
			PreparedStatement pstmt =conn.prepareStatement(sql1);
			pstmt.setString(1, point.getId());
			ResultSet rs = pstmt.executeQuery();
			int point1 = 0;
			while(rs.next()) {
				point1=rs.getInt("point");
			}
			return point1;
		}
		public boolean deletemember(MemberChangeDto deletemember) throws SQLException{
			Connection conn= DBConnection.getConnection();
			String sql1 ="Delete from member where id=?";
			PreparedStatement pstmt =conn.prepareStatement(sql1);
			pstmt.setString(1, deletemember.getId());
			pstmt.executeUpdate();
			pstmt.close();
			return true;
		}
}
