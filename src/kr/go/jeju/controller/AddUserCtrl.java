package kr.go.jeju.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.jeju.dto.UserDTO;
import kr.go.jeju.model.NoticeDAO;
import kr.go.jeju.model.UserDAO;

@WebServlet("/AddUserCtrl.do")
public class AddUserCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		String mail = request.getParameter("mail");

		UserDTO dto = new UserDTO();
		dto.setId(id);
		dto.setPw(pw);
		dto.setName(name);
		dto.setTel(tel);
		dto.setAddress(address);
		dto.setMail(mail);

		UserDAO dao = new UserDAO();
		int cnt = dao.addUser(dto);

		if (cnt >= 1) {
			response.sendRedirect("GetNoticeListCtrl.do");
		} else {
			response.sendRedirect("./notice/addNotice.jsp");
		}
	}
}