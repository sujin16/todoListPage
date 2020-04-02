package kr.or.todolist.dao;


import java.util.ArrayList;
import java.util.List;

import kr.or.todolist.dto.TodoDto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import kr.or.todolist.connect.JDBCConnect;

public class TodoDao {
	
	private static String dburl = "jdbc:mysql://localhost:3306/connectdb?useSSL=false&serverTimezone=UTC";
	private static String dbUser ="connectuser";
	private static String dbpasswd ="connect123!@#";
	
	public int addTodo(TodoDto todo) {
		int insertCount =0;
		
		String sql = "INSERT INTO todo(title, name, sequence) VALUES(?,?,?)";
		try(Connection conn = JDBCConnect.getConnection();
				PreparedStatement ps =conn.prepareStatement(sql)) {
			ps.setString(1,todo.getTitle());
			ps.setString(2,todo.getName());
			ps.setInt(3,todo.getSequence());
			
			insertCount = ps.executeUpdate(); 
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return insertCount;
	}
	
	public List<TodoDto> getTodos(){
		List<TodoDto> todoList = new ArrayList<>();
		String sql = "select id, title, name, sequence, type, regdate from todo order by regdate desc";
		try(Connection conn = JDBCConnect.getConnection();
				PreparedStatement ps =conn.prepareStatement(sql)) {
			try(ResultSet rs = ps.executeQuery()) {
				while(rs.next()){
					int i =1;
					Long id =rs.getLong(i++);
					String title= rs.getString(i++);
					String name= rs.getString(i++);
					Integer sequence= rs.getInt(i++);
					String type= rs.getString(i++);
					String regdate= rs.getString(i++);
					TodoDto todo = new TodoDto(title,name,sequence);
					todo.setId(id);
					todo.setRegDate(regdate);
					todo.setType(type);
					todoList.add(todo);
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return todoList;
		
	}

	public int updateTodo(Long id, String type) {
		int updateCount =0;
		
		String sql = "UPDATE todo SET type =? where id =?";
		try(Connection conn = JDBCConnect.getConnection();
				PreparedStatement ps =conn.prepareStatement(sql)) {
			ps.setString(1,type);
			ps.setLong(2, id);
			updateCount = ps.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return updateCount;
	}
	
	public int deleteTodo(Long id) {
		int deleteCount =0;
		
		String sql = "DELETE FROM todo WHERE id =?";
		try(Connection conn = JDBCConnect.getConnection();
				PreparedStatement ps =conn.prepareStatement(sql)) {
			ps.setLong(1, Long.valueOf(id));
			deleteCount = ps.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return deleteCount;
	}

}
