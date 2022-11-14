package kr.go.jeju.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.jeju.model.UserDAO;

import org.json.JSONObject;

@WebServlet("/IdCheckCtrl.do")
public class IdCheckCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		String id = request.getParamater("id");
		boolean result = false;
		int cnt = 0;
		UserDAO dao = new UserDAO();
		cnt = dao.idCheckPro(id);
		if(cnt>=1){  //이미 있는 아디이
			result = false;
		}else{
			result = true;
		}
		JSONObject json = new JSONObject();
		json.put("result", result);
		PrintWriter out
		
		
	}

}
