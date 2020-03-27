<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.todolist.dto.TodoDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	List<TodoDto> todoList = (ArrayList<TodoDto>) request.getAttribute("todoList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<header>
		<h2>I CAN DO IT</h2>
		<input id="addBtn" class="btn btn-dark" value="Enroll TODO"
			onclick="location.href='todoForm.jsp'">
	</header>
	<section class="wrap">
		<div class="todo">
			<h2 class="block">TODO</h2>
			<ul>
				<% for (TodoDto todo : todoList) {%>
				<li><%=todo.getName()%><br /></li>
				<% }%>
			</ul>
		</div>
		<div class="doing">
			<h2 class="block">DOING</h2>
			<ul>
				<li>sdf</li>
				<li>sdf</li>
				<li>sdf</li>
				<li>sdf</li>
			</ul>
		</div>
		<div class="done">
			<h2 class="block">DONE</h2>
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