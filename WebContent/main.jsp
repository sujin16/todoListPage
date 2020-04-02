<%@page import="kr.or.todolist.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.todolist.dto.TodoDto"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	List<TodoDto> todoList = (ArrayList<TodoDto>) request.getAttribute("todoList");
	List<TodoDto> doingList = (ArrayList<TodoDto>) request.getAttribute("doingList");
	List<TodoDto> doneList = (ArrayList<TodoDto>) request.getAttribute("doneList");
	int resultNum = (Integer)request.getAttribute("resultNum");
%>
<!DOCTYPE html>
<html>
<head>
<meta >
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css">
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>

	window.onload = function() {
		document.getElementById('formBtn').onclick = function() {
			document.getElementById('form').submit();
		};
		var resultNum = <%=resultNum%>;
		if(resultNum ==0){
			alert('add todo');
		}
		
	};
	
	function buttonClick(index){
		if(index ==1){
			alert('update');
			document.getElementById('todo1').action ="${pageContext.request.contextPath}/todoUpdate";
		}
		if(index ==2){
			alert('delete');
			document.getElementById('todo1').action ="${pageContext.request.contextPath}/todoDelete";
			document.getElementById('todo1').submit();
		}
	}
	
</script>
<script>
	
</script>	
<script src="https://kit.fontawesome.com/a9f6f38102.js" crossorigin="anonymous"></script>

</head>
<body>
	<header>
		<h2>I CAN DO IT</h2>
		<form action="${pageContext.request.contextPath}/todoForm" method="get">
			<input type="submit" id="formBtn"class="btn btn-dark" value="Enroll TODO" style="float: right;">
		</form>
	</header>
	<section class="wrap">
		<div class="todo">
			<h4 class="block">TODO</h4>
			<ul>
				<%
					for (TodoDto todo : todoList) {
				%>
				<li>
					<form id ="todo1" class="card" method="post">	
						<button type="button" id="deleteBtn" onclick="buttonClick(2)"/><i class="fas fa-trash-alt"></i><button>
						title <input type="text" value =<%=todo.getTitle() %> id="title"><br/>
						Date <input type="text" value =<%=todo.getRegDate() %> id="regdate"><br/>
						name<input type="text" value =<%=todo.getName() %> id="name" ><br/>
						<input type="hidden" value =<%=todo.getId() %> id="id" name="id" >
						<input type="hidden" value =<%=todo.getType() %> id="type" name="type" >
						<button type="button" id="updateBtn" onclick="buttonClick(1)"><i class="fas fa-arrow-right"></i></button>
					</form>
				</li>
				<%
					}
				%>
			</ul>
		</div>
		<div class="doing">
			<h4 class="block">DOING</h4>
			<ul>
				<%
					for (TodoDto todo : doingList) {
				%>
				<li>
					<form id ="todo1" class="card" method="post">	
						<button type="button" id="deleteBtn" onclick="buttonClick(2)"/><i class="fas fa-trash-alt"></i><button>
						title <input type="text" value =<%=todo.getTitle() %> id="title"><br/>
						Date <input type="text" value =<%=todo.getRegDate() %> id="regdate"><br/>
						name<input type="text" value =<%=todo.getName() %> id="name" ><br/>
						<input type="hidden" value =<%=todo.getId() %> id="id" name="id" >
						<input type="hidden" value =<%=todo.getType() %> id="type" name="type" >
						<button type="button" id="updateBtn" onclick="buttonClick(1)"><i class="fas fa-arrow-right"></i></button>
					</form>
				</li>
				<%
					}
				%>
			</ul>
		</div>
		<div class="done">
			<h4 class="block">DONE</h4>
			<ul>
				<%
					for (TodoDto todo : doneList) {
				%>
				<li>
					<form id ="todo1" class="card" method="post">	
						<button type="button" id="deleteBtn" onclick="buttonClick(2)"/><i class="fas fa-trash-alt"></i><button>
						title <input type="text" value =<%=todo.getTitle() %> id="title"><br/>
						Date <input type="text" value =<%=todo.getRegDate() %> id="regdate"><br/>
						name<input type="text" value =<%=todo.getName() %> id="name" ><br/>
						<input type="hidden" value =<%=todo.getId() %> id="id" name="id" >
						<input type="hidden" value =<%=todo.getType() %> id="type" name="type" >
						<button type="button" id="updateBtn" onclick="buttonClick(1)"><i class="fas fa-arrow-right"></i></button>
					</form>
				</li>
				<%
					}
				%>
			</ul>
		</div>
	</section>
	<footer>
		<div class="card text-center">
			<div class="card-header">hello1234@naver.com</div>
			<div class="card-body">
				<a href="https://github.com/sujin16/myhomepage"
					class="btn btn-outline-dark">Git hub Link</a>
			</div>
			<div class="card-footer text-muted">2 days ago</div>
		</div>
	</footer>
</body>
</html>