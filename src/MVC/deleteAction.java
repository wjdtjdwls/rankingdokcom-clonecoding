package MVC;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sj.dao.*;
import com.sj.dto.*;

public class deleteAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDao mDao = new MemberDao();
		String id1 = request.getParameter("id");
			try {
				mDao.deletemember(new MemberChangeDto(id1));
			} catch (SQLException e) {
				e.printStackTrace();
			}
			RequestDispatcher rd = request.getRequestDispatcher("Controller?command=deleteresult");
			rd.forward(request, response);
		
	}
}
