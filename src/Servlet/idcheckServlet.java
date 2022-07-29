package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.sj.dao.*;
import com.sj.dto.*;

/**
 * Servlet implementation class idcheckServlet
 */
@WebServlet("/idcheckServlet")
public class idcheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDao mDao= new MemberDao();
		String id=request.getParameter("id");
		boolean result=false;
		try {
			result = mDao.idget(new MemberDto(id));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		PrintWriter out =response.getWriter();//응답을 작성할 수 있는 Writer를 얻음.
		JSONObject obj=new JSONObject();//"JSONObject"-->json-simple
		//update문 정상적으로 실행됨.
		obj.put("result",result);
		out.println(obj);
	}

}
