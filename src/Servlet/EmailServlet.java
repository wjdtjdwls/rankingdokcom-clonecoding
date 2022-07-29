package Servlet;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;


@WebServlet("/EmailServlet")
public class EmailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int certi=(int)((Math.random()*9000)+1000); 
		final String user = "wls3853@naver.com";
		final String password = "wjdtjd6367";
		String email=request.getParameter("email")+"@"+request.getParameter("site");
		// Get the session object
		Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.naver.com");
		prop.put("mail.smtp.port", 587);
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.starttls.enable", "true");
		prop.put("mail.smtp.ssl.protocols", "TLSv1.2");
		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});
		// Compose the message
		
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			// 수신자 메일주소
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
			
			// Subject
			message.setSubject("인증번호는...");
			// Text
			message.setText("인증번호는 "+certi+"입니다.");

			// send the message
			Transport.send(message);// 전송
			System.out.println("message sent successfully...");
		} catch (AddressException e) {
			// Auto generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// Auto generated catch block
			e.printStackTrace();
		}
		response.setContentType("application/json");//응답을 json형식으로.
		PrintWriter out =response.getWriter();//응답을 작성할 수 있는 Writer를 얻음.
		JSONObject obj=new JSONObject();//"JSONObject"-->json-simple
			//update문 정상적으로 실행됨.
			obj.put("certi",certi);
			
		out.println(obj);
	}
}
