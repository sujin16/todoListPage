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
@WebServlet("/main")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MainServlet() {
		super();
	}
	
	// MainServlet은 TodoDao를 이용해 결과를 조회해서 main.jsp 에 전달합니다.
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		TodoDao dao = new TodoDao();
		int resultNum =0;
		List<TodoDto> todoList = new ArrayList<>();
		List<TodoDto> doingList = new ArrayList<>();
		List<TodoDto> doneList = new ArrayList<>();
		
		for (TodoDto todo : dao.getTodos()) {
		
			if(todo.getType().equals("TODO")) {
				todoList.add(todo);
			}
			if(todo.getType().equals("DOING")) {
				doingList.add(todo);
			}
			if(todo.getType().equals("DONE")) {
				doneList.add(todo);
			}
			resultNum++;
		}
		request.setCharacterEncoding("utf-8");
		System.out.println("get call");

		request.setAttribute("todoList", todoList);
		request.setAttribute("doingList", doingList);
		request.setAttribute("doneList", doneList);
		request.setAttribute("resultNum", resultNum);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/main.jsp");
		dispatcher.forward(request, response);	
		
	}

}
