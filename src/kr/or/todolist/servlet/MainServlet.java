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
		}
		request.setCharacterEncoding("utf-8");
		System.out.println("get call");

		request.setAttribute("todoList", todoList);
		request.setAttribute("doingList", doingList);
		request.setAttribute("doneList", doneList);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/main.jsp");
		dispatcher.forward(request, response);	
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//https://yonghooo.tistory.com/409
		request.setCharacterEncoding("utf-8");
		System.out.println("post call");
		try {
			String id =request.getParameter("id");
			String type =request.getParameter("type");
			TodoDao dao = new TodoDao();
			
			if(type.equals("TODO")) {
				int deleteCount = dao.updateTodo(Long.parseLong(id), "DOING");
				System.out.println(deleteCount);

			}
			if(type.equals("DOING")) {
				int deleteCount = dao.updateTodo(Long.parseLong(id), "DONE");
				System.out.println(deleteCount);

			}
			if(type.equals("DONE")) {
				int deleteCount = dao.deleteTodo(Long.parseLong(id));
				System.out.println(deleteCount);
			}	
			
			String context = request.getContextPath();
			response.sendRedirect(context + "/main");
			
		}catch(NullPointerException e) {
			System.out.println("no value");
		}
		
	}

}
