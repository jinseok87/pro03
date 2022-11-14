package kr.go.jeju.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.go.jeju.model.Maria;
import kr.go.jeju.model.UserDAO;

@WebServlet("/loginCtrl.do")
public class loginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.USER_LOGIN);
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");

			UserDAO dao = new UserDAO();
			String name = dao.loginCheck(id, pw);

			if (name != null) {
				HttpSession session = request.getSession();
				session.setAttribute("userId", id);
				session.setAttribute("userName", name);

				response.sendRedirect("./Main");
			} else {
				response.sendRedirect("./user/login.jsp");
			}
		} catch (ClassNotFoundException e) {
		} catch (SQLException e) {
		} catch (Exception e) {
		}
	}
}
