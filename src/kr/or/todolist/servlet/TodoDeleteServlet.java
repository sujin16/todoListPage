package kr.or.todolist.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.todolist.dao.TodoDao;
import kr.or.todolist.dto.TodoDto;

/**
 * Servlet implementation class TodoAddServlet
 */
@WebServlet("/todoDelete")
public class TodoDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public TodoDeleteServlet() {
		super();
	}

	/*
	 * 5. 할 일 등록폼에서 값을 입력하고 제출 버튼을 누르면 post 방식으로 TodoAddServlet으로 값이 전달되고,
	 * TodoAddServlet에서는 TodoDao를 이용해서 테이블에 저장하고 메인화면으로 리다이렉트합니다.
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// https://yonghooo.tistory.com/409
		request.setCharacterEncoding("utf-8");
		System.out.println("post call");
		try {
			String id = request.getParameter("id");
			TodoDao dao = new TodoDao();
			int deleteCount = dao.deleteTodo(Long.parseLong(id));
			String context = request.getContextPath();
			response.sendRedirect(context + "/main");

		} catch (NullPointerException e) {
			System.out.println("no value");
		}
	}

}
