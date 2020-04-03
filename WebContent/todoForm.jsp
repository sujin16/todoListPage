<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="./webjars/jquery/3.4.0/dist/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/dist/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a9f6f38102.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/form.css">
<script>
	window.onload = function() {
		
	};
	
	function enroll(index){
		var title = document.getElementById('title').value;
		var name = document.getElementById('name').value;
		var sequence = document.getElementById('sequence').value;

		if (title == "") {
			alert('title')
			return;
		}
		if (name == "") {
			alert('name')
			return;
		}
		if (sequence <= 0) {
			alert('sequence')
			return;
		}
		alert('sucess enroll');
		document.getElementById('enroll').action ="${pageContext.request.contextPath}/todoAdd";
		document.getElementById('enroll').submit();
		
	};
</script>
</head>
<body>
	<header>
		<h2>I CAN DO IT</h2>
		<input id="backBtn" class="btn btn-dark" value="BACK"
			onclick="location.href='main'">
	</header>
	
	<section class="wrap">
		<form method="post" id="enroll">
			<div class="title">
				<h4>TITLE</h4>
				<input type="text" name="title" id="title" placeholder="input title"
					maxlength="24" value="title" style="width: 90%; height: 50px;">
				<div class="alert alert-danger" role="alert" style="width: 90%; margin-top:10px;">
 					 A simple danger alert—check it out!
				</div>
			</div>
			<div class="name">
				<h4>NAME</h4>
				<input type="text" name="name" id="name" placeholder="input name"
					value="name" style="width: 90%; height: 50px;">
				<div class="alert alert-danger" role="alert" style="width: 90%; margin-top:10px;">
 					 A simple danger alert—check it out!
				</div>
			</div>
			<div class="sequence">
				<h4>SEQEUNCE</h4>
				<input type="number" name="sequence" id="sequence" value="sequence"
				style="width: 90%; height: 50px;">
			</div>
			<div class="button">
				<input type="button" id="enrollBtn" value="ENROLL"
					class="btn btn-outline-dark btn" style="width: 45%;" onclick="enroll(1)" /> <input
					type="reset" id="deleteBtn" value="DELETE"
					class="btn btn-outline-dark btn" style="width: 45%;" />
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