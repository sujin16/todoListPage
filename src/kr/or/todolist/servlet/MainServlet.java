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
 * Servlet implementation class MainServlet
 */
@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MainServlet() {
		super();
	}

	// MainServlet은 TodoDao를 이용해 결과를 조회해서 main.jsp 에 전달합니다.
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		TodoDao dao = new TodoDao();
		List<TodoDto> todoList = new ArrayList<>();
		todoList = dao.getTodos();
		for (TodoDto todo : todoList) {
			System.out.println(todo.toString());
		}

		request.setAttribute("todoList", todoList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/main.jsp");
		dispatcher.forward(request, response);

	}

}
