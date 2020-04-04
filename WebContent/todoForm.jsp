<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="enrollBool" scope="page" value="false"/>
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
	
	function keyUp(obj){
		if(obj.id == 'title'){
			if(obj.value ==''){
				alert('input title');
				return;
			}
			if(obj.value.length <2 ){
				alert('title length 2 ~ 24');
				return;
			}
		}
		if(obj.id == 'name'){
			if(obj.value ==''){
				alert('input name');
				return;
			}
			if(obj.value.length >5 ){
				alert('name length 1 ~ 4');
				return;
			}
		}
		if(obj.id == 'sequence'){
			if(obj.value ==''){
				alert('input sequence');
				return;
			}
			if(obj.value >3 ){
				alert('input sequence 1 ~ 3');
				obj.value ='1';
				return;
			}
		}
		<c:set var="enrollBool" value="true"/>
	}
	
	function enroll(){
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
					maxlength="24" style="width: 90%; height: 50px;"  onKeyUp="keyUp(this);">
			</div>
			<div class="name">
				<h4>NAME</h4>
				<input type="text" name="name" id="name" placeholder="input name"
					style="width: 90%; height: 50px;" onKeyUp="keyUp(this);">
			<div class="sequence">
				<h4>SEQEUNCE</h4>
				<input type="number" name="sequence" id="sequence" 	placeholder="input sequence" 
				style="width: 90%; height: 50px;" onKeyUp="keyUp(this);">
			</div>
			<div class="button">
				<input type="button" id="enrollBtn" value="ENROLL" class="btn btn-outline-dark btn" style="width: 45%;" onclick="enroll()" />
				<input type="reset" id="deleteBtn" value="DELETE" class="btn btn-outline-dark btn" style="width: 45%;" />
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
