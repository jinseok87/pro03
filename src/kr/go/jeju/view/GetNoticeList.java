package kr.go.jeju.view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.jeju.dto.NoticeDTO;
import kr.go.jeju.model.NoticeDAO;

@WebServlet("/GetNoticeList.do")
public class GetNoticeList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 초기화
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		// dao에서 목록 불러오기 호출하여 변환받음
		NoticeDAO dao = new NoticeDAO();
		ArrayList<NoticeDTO> notiList = dao.getNoticeList();
		// dao로 부터 받은 데이터를 view에 디스패치함
		request.setAttribute("list",notiList);
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/notice/noticeList.jsp");
		view.forward(request,response);

	}

}