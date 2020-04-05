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
@WebServlet("/todoUpdate")
public class TodoUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public TodoUpdateServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// https://yonghooo.tistory.com/409
		request.setCharacterEncoding("utf-8");
		System.out.println("post call");
		try {
			String id = request.getParameter("id");
			String type = request.getParameter("type");
			TodoDao dao = new TodoDao();

			if (type.equals("TODO")) {
				int deleteCount = dao.updateTodo(Long.parseLong(id), "DOING");
				System.out.println(deleteCount);

			}
			if (type.equals("DOING")) {
				int deleteCount = dao.updateTodo(Long.parseLong(id), "DONE");
				System.out.println(deleteCount);

			}
			if (type.equals("DONE")) {
				int deleteCount = dao.deleteTodo(Long.parseLong(id));
				System.out.println(deleteCount);
			}

			String context = request.getContextPath();
			response.sendRedirect(context + "/main");

		} catch (NullPointerException e) {
			System.out.println("no value");
		}


	}
}
