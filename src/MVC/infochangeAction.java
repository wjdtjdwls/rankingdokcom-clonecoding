package MVC;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sj.dao.MemberDao;
import com.sj.dto.MemberChangeDto;

public class infochangeAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		MemberDao mDao = new MemberDao();
		String id = request.getParameter("id");
		String pw1 = request.getParameter("pw1");
		String pw2 = request.getParameter("pw2");
		String nick = request.getParameter("nick");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String pnumber = phone1 + "-" + phone2 + "-" + phone3;
		String email = request.getParameter("email") + "@" + request.getParameter("site");
		String birth = request.getParameter("year") + "-" + request.getParameter("month") + "-"
				+ request.getParameter("day");
		String gender = request.getParameter("gender");
		String lifetime = request.getParameter("lifetime-accept");
		String e_consent = request.getParameter("accept1");
		String sms_consent = request.getParameter("accept2");

		
		if (lifetime.equals("o")) {
			lifetime = "동의";
		} else {
			lifetime = "동의안함";
		}
		try {
			if (e_consent.equals("email_consent")) {
				e_consent = "동의";
			}
		} catch(Exception e) {
			e_consent = "동의안함";
			e.printStackTrace();
		}
		try {
			if (sms_consent.equals("sms_consent")) {
				sms_consent = "동의";
			} 
		}catch(Exception e) {
			sms_consent = "동의안함";
			e.printStackTrace();
		}
		
		try {
			if (pw1 == "" && pw2 == "") {
					mDao.inforChange2(new MemberChangeDto(nick, pnumber, email, birth, gender, lifetime, e_consent, sms_consent, id));
			}else {
				mDao.inforChange1(new MemberChangeDto(pw2,nick, pnumber, email, birth, gender, lifetime, e_consent, sms_consent, id));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
			RequestDispatcher rd = request.getRequestDispatcher("Controller?command=infochangeresult");
			rd.forward(request, response);
	}
}