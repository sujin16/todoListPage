package kr.or.todolist.exam;

import java.util.ArrayList;
import java.util.List;

import kr.or.todolist.dao.TodoDao;
import kr.or.todolist.dto.TodoDto;

public class TodoExam {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		TodoDao dao =new TodoDao();
		List<TodoDto> todoList = new ArrayList<>();
		todoList = dao.getTodos();
		for (TodoDto todo : todoList) {
		
			System.out.println(todo.toString());
		}
		
	}

}
