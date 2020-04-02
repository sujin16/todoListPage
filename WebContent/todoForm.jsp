<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="css/form.css">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script>
		window.onload= function(){
			document.getElementById('enrollBtn').onclick =function(){
				var title = document.getElementById('title').value;
				var name = document.getElementById('name').value;
				var sequence = document.getElementById('sequence').value;
				
				if(title == ""){
					alert('title')
					return;
				}
				if(name == ""){
					alert('name')
					return;
				}
				if(sequence <=0){
					alert('sequence')
					return;
				}
				alert('sucess enroll');
				document.getElementById('enroll').submit();
			};
		};
	</script>
</head>
<body>
	<header>
		<h2>I CAN DO IT</h2>
		<input id="backBtn" class="btn btn-dark" value="BACK" onclick="location.href='main'">
	</header>
	<section class="wrap">
		<form action="${pageContext.request.contextPath}/todoAdd" method="post" id="enroll">
			<div class="title">
				<h4>TITLE</h4>
				<input type="text" name="title" id="title" placeholder="input title" maxlength="24" value="title">
			</div>
			<div class ="name">
				<h4>NAME</h4>
				<input type="text" name="name" id="name" placeholder="input name" value="name">
			</div>
			<div class ="sequence">
				<h4>SEQEUNCE</h4>
			    <input type="number" name="sequence" id="sequence" value="sequence">
			</div>
			<div class ="button">
				<input type="button" id="enrollBtn" value="ENROLL" class="btn btn-outline-dark btn" style="width:45%;" />
				<input type="reset" id="deleteBtn" value="DELETE" class="btn btn-outline-dark btn" style="width:45%;"/>
			</div>		
		</form>
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