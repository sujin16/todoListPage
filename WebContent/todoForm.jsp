<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="css/form.css">
</head>
<body>
    <header>
        <h2>I CAN DO IT</h2>
        <input id ="backBtn" class="btn btn-dark" value="BACK" onclick="location.href='main.jsp'">
    </header>
    <section class="wrap">
        <div class="title">
            <h3>TITLE</h3>
            <input class="radio" type="text" id="titleText" maxlength="24" placeholder="input title"/>
        </div>
        <div class="name">
            <h3>NAME</h3>
            <input class="radio" type="text" id="nameText"placeholder="input name" autofocus/>
        </div>
        <div class="sequence">
            <h3>SEQUENCE</h3>
            <form>
                <input type="radio" class="sequenceRadio" value="1st"/><label style="font-size: 18px;">1st</label>
                <input type="radio" class="sequenceRadio" value="2st"/><label style="font-size: 18px;">2st</label>
                <input type="radio" class="sequenceRadio" value="3st"/><label style="font-size: 18px;">3st</label>
            </form>
        </div> 
        <div class="button">
            <input id ="enrollBtn" class="btn btn-outline-dark" value="ENROLL">
            <input id ="deleteBtn" class="btn btn-outline-dark" value="DELETE">
        </div>
        
    </section>
    <footer>
		<div class="card text-center">
			<div class="card-header">hello1234@naver.com</div>
			<div class="card-body">
				<a href="https://github.com/sujin16/myhomepage" class="btn btn-outline-dark">Git hub Link</a>
			</div>
			<div class="card-footer text-muted">2 days ago</div>
		</div>
	</footer>
</body>
</html>