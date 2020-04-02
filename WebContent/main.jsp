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
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="./webjars/jquery/3.4.0/dist/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/dist/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a9f6f38102.js" crossorigin="anonymous"></script>
<script>

	window.onload = function() {
		document.getElementById('formBtn').onclick = function() {
			document.getElementById('form').submit();
		};
		
		var resultNum = <%=resultNum%>;
		if(resultNum ==0){
			var addTodo = document.getElementById("addTodo");
			addTodo.style.display='block';
			addTodo.innerHTML = "<h3><font color='black'>"+"why don't you something to do ? "+"</font></h3>";
		}
		
	};
	
	function buttonClick(index){
		if(index ==1){
			alert('update');
			document.getElementById('todo1').action ="${pageContext.request.contextPath}/todoUpdate";
			document.getElementById('todo1').submit();
		}
		if(index ==2){
			alert('delete');
			document.getElementById('todo1').action ="${pageContext.request.contextPath}/todoDelete";
			document.getElementById('todo1').submit();
		}
	}
	
</script>	
</head>
<body>
	<header>
		<h5 id="clock">00:00</h5>
		<h2>I CAN DO IT</h2>
		<form action="${pageContext.request.contextPath}/todoForm" method="get">
			<input type="submit" id="formBtn" class="btn btn-dark" value="Enroll TODO" style="float: right;">
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
	<div id="addTodo" style="text-align: center; margin-top:30px; margin-bottom:130px; display:none;"></div>
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

<script>
	function printTime() {

		var clock = document.getElementById("clock"); 
		var now = new Date(); 
		var nowTime = now.getFullYear() + " 년  " + (now.getMonth() + 1) + " 월 "
				+ now.getDate() + " 일 " + now.getHours() + " : " + now.getMinutes()
				+ " : " + now.getSeconds();

		clock.innerHTML = nowTime; 
		setTimeout("printTime()", 1000); 

	}

	window.onload = function() { // 페이지가 로딩되면 실행
		printTime();
	}
</script>
</html>