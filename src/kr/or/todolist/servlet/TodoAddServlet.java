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
@WebServlet("/TodoAddServlet")
public class TodoAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TodoAddServlet() {
        super();
    }

	/*
	 5.	할 일 등록폼에서 값을 입력하고 제출 버튼을 누르면 post 방식으로 TodoAddServlet으로 값이 전달되고, TodoAddServlet에서는 TodoDao를 이용해서 테이블에 저장하고 메인화면으로 리다이렉트합니다. 
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TodoDto dto = (TodoDto)request.getAttribute("todo");
		TodoDao dao = new TodoDao();
		dao.addTodo(dto);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/main.jsp");
		dispatcher.forward(request, response);
	
	}

}
