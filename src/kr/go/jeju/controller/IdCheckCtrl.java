package kr.go.jeju.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import kr.go.jeju.model.UserDAO;


@WebServlet("/idCheckCtrl.do")
public class idCheckCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String id = request.getParameter("id");
		boolean result = false;
		int cnt = 0;
		UserDAO dao = new UserDAO();
		cnt = dao.idCheckPro(id);
<<<<<<< HEAD
		if(cnt>=1){	
			result = false;
		} else {
=======
		if(cnt>=1) {
			result = false;
		}else {
>>>>>>> bd9f635f01f685b8cb64d4ea97c580d27cd8a2e2
			result = true;
		}
		JSONObject json = new JSONObject();
		json.put("result", result);
		PrintWriter out = response.getWriter();
<<<<<<< HEAD
		out.println(json.toString());
	}
=======
		out.println(json.toString());	}

>>>>>>> bd9f635f01f685b8cb64d4ea97c580d27cd8a2e2
}
