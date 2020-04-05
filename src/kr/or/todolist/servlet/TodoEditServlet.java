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
@WebServlet("/todoEdit")
public class TodoEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public TodoEditServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// https://yonghooo.tistory.com/409
		request.setCharacterEncoding("utf-8");
		System.out.println("post call");
		try {
			String id = request.getParameter("id");
			System.out.println(id);
			request.setAttribute("id", id);
			request.setAttribute("type","edit");
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/todoForm.jsp");
			dispatcher.forward(request, response);	
			
		} catch (NullPointerException e) {
			System.out.println("no value");
		}

	}

}
