<%@page import="kr.or.todolist.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.todolist.dto.TodoDto"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	List<TodoDto> todoList = (ArrayList<TodoDto>) request.getAttribute("todoList");
%>
<!DOCTYPE html>
<html>
<head>
<meta >
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css">
<script>
	window.onload = function() {
		document.getElementById('formBtn').onclick = function() {
			document.getElementById('form').submit();
		};
	};
</script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script>
		window.onload= function(){
			document.getElementById('deleteBtn').onclick =function(){
				var title = document.getElementById('title').value;
				var name = document.getElementById('name').value;
				var sequence = document.getElementById('sequence').value;
				<%
					TodoDao dao = new TodoDao();
					
				%>
			};
		};
	</script>
</head>
<body>
	<header>
		<h2>I CAN DO IT</h2>
		<form action="${pageContext.request.contextPath}/todoForm" method="get" id="form">
			<input id="formBtn"class="btn btn-dark" value="Enroll TODO" style="float: right;">
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
					<form class="card">
						<p id="title"><%=todo.getTitle() %></p>
						<p id="name">Date : <%=todo.getRegDate() %></p>
						<p>name : <%=todo.getName() %> sequence : <%=todo.getSequence() %></p>
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
				<li>
					<form class="card">
						<p>title</p>
						<p>Date : 2020 -03- 01</p>
						<p>title</p>
					</form>
				</li>
				<li>
					<form class="card">
						<p>title</p>
						<p>Date : 2020 -03- 01</p>
						<p>title</p>
					</form>
				</li>
				<li>
					<form class="card">
						<p>title</p>
						<p>Date : 2020 -03- 01</p>
						<p>title</p>
					</form>
				</li>
				
			</ul>
		</div>
		<div class="done">
			<h4 class="block">DONE</h4>
			<ul>
				<li>sdf</li>
				<li>sdf</li>
				<li>sdf</li>
				<li>sdf</li>
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