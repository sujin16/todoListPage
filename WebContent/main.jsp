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
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="./webjars/jquery/3.4.0/dist/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/dist/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a9f6f38102.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/main.css">
<script>
	
	function buttonClick(index){
		if(index ==0){
			document.getElementById('todo0').action ="${pageContext.request.contextPath}/todoForm";
			document.getElementById('todo0').submit();
		}
		
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
		if(index ==3){
			alert('edit');
			document.getElementById('todo1').action ="${pageContext.request.contextPath}/todoEdit";
			document.getElementById('todo1').submit();
		}
		
	}
	
	
</script>	
</head>
<body>
	<header>
		<h5 id="clock">00:00</h5>
		<h2>I CAN DO IT</h2>
		<form id="todo0" method="get" >
			<input type="button" onclick="buttonClick(0)" id="formBtn" class="btn btn-dark" value="Enroll TODO" style="float: right;">
		</form>
	</header>
	<section class="wrap">
		<div class="todo">
			<h4 class="block">TODO</h4>
			<ul style="width:100%; list-style:none; padding-left:0px;">
				<%
					for (TodoDto todo : todoList) {
				%>
				<li>
					<form id ="todo1" method="post">
						<div class="card">
							<div class="card-body">
								<h3 class="card-title"><%=todo.getTitle()%></h3>
								<p class="card-text" id="title"><%=todo.getRegDate()%>&nbsp;&nbsp;&nbsp;<%=todo.getName()%></p>
								<button type="button"  class="btn btn-primary" id="sequence" name="sequence" value="<%=todo.getSequence()%>"><%=todo.getSequence()%></button>
								<input type="hidden" value =<%=todo.getId() %> id="id" name="id" >
								<input type="hidden" value =<%=todo.getType() %> id="type" name="type" >
								<button type="button" id="updateBtn" onclick="buttonClick(1)"><i class="fas fa-arrow-right"></i></button>
								<button type="button" id="deleteBtn" onclick="buttonClick(2)" /><i class="fas fa-trash-alt"></i></button>
								<button type="button" id="editBtn" onclick="buttonClick(3)" /><i class="far fa-edit"></i></button>
							</div>
						</div>
					</form>
				</li>
				<%
					}
				%>
			</ul>
		</div>
		<div class="doing">
			<h4 class="block">DOING</h4>
			<ul style="width:100%; list-style:none; padding-left:0px;">
				<%
					for (TodoDto todo : doingList) {
				%>
				<li>
					<form id ="todo1" method="post">
						<div class="card">
							<div class="card-body">
								<h3 class="card-title"><%=todo.getTitle()%></h3>
								<p class="card-text" id="title"><%=todo.getRegDate()%>&nbsp;&nbsp;&nbsp;<%=todo.getName()%></p>
								<button type="button"  class="btn btn-primary" id="sequence" name="sequence" value="<%=todo.getSequence()%>"><%=todo.getSequence()%></button>
								<input type="hidden" value =<%=todo.getId() %> id="id" name="id" >
								<input type="hidden" value =<%=todo.getType() %> id="type" name="type" >
								<button type="button" id="updateBtn" onclick="buttonClick(1)"><i class="fas fa-arrow-right"></i></button>
								<button type="button" id="deleteBtn" onclick="buttonClick(2)" /><i class="fas fa-trash-alt"></i></button>
								<button type="button" id="editBtn" onclick="buttonClick(3)" /><i class="far fa-edit"></i></button>
							</div>
						</div>
					</form>
				</li>
				<%
					}
				%>
			</ul>
		</div>
		<div class="done">
			<h4 class="block">DONE</h4>
			<ul style="width:100%; list-style:none; padding-left:0px;">
				<%
					for (TodoDto todo : doneList) {
				%>
				<li>
					<form id ="todo1" method="post">
						<div class="card" >
							<div class="card-body">
								<h3 class="card-title"><%=todo.getTitle()%></h3>
								<p class="card-text" id="title"><%=todo.getRegDate()%>&nbsp;&nbsp;&nbsp;<%=todo.getName()%></p>
								<button type="button"  class="btn btn-primary" id="sequence" name="sequence" value="<%=todo.getSequence()%>"><%=todo.getSequence()%></button>
								<input type="hidden" value =<%=todo.getId() %> id="id" name="id" >
								<input type="hidden" value =<%=todo.getType() %> id="type" name="type" >
								<button type="button" id="updateBtn" onclick="buttonClick(1)"><i class="fas fa-arrow-right"></i></button>
								<button type="button" id="deleteBtn" onclick="buttonClick(2)" /><i class="fas fa-trash-alt"></i></button>
								<button type="button" id="editBtn" onclick="buttonClick(3)" /><i class="far fa-edit"></i></button>
							</div>
						</div>
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
		var nowTime = now.getFullYear() + " . " + (now.getMonth() + 1) + " . "
 				+ now.getDate() +"&nbsp;&nbsp;&nbsp;&nbsp;" + now.getHours() + " : " + now.getMinutes();
	
		clock.innerHTML = nowTime; 
		setTimeout("printTime()", 1000); 
	
	};
	window.onload = function() {
		printTime();
		
		var resultNum = <%=resultNum%>;
		if(resultNum ==0){
			var addTodo = document.getElementById("addTodo");
			addTodo.style.display='block';
			addTodo.innerHTML = "<h3><font color='black'>"+"why don't you something to do ? "+"</font></h3>";
		}
		
		var sequenceArray = document.getElementsByName("sequence");
	
		for(var i=0; i<sequenceArray.length;i++){
			var sequenceButton = sequenceArray[i];
			if(sequenceButton.value == "1"){
				sequenceButton.className= "btn btn-primary";
			}
			if(sequenceButton.value == "2"){
				sequenceButton.className= "btn btn-success";
			}
			if(sequenceButton.value == "3"){
				sequenceButton.className= "btn btn-warning";
			}
		}
		
		
	};
</script>
</html>