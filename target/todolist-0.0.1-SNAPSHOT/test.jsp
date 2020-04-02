<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
  <title>Insert title here</title>
  <script src="/webjars/jquery/3.4.0/dist/jquery.min.js"></script>
  <script src="/webjars/bootstrap/4.3.1/dist/js/bootstrap.min.js"></script>
  <script>
  $(function() {
    $("#callBtn").click(function() {
      var str = $("#form1").serialize();
      alert('sdf')
      alert(str);
      $.ajax({
        type:"POST",
        url : "//hello",
        contentType: "application/x-www-form-urlencoded; charset=utf-8",
        data: str,
        datatype:"json",
        success: function(data) {
          alert(data.result);			
        },
        error: function(e) {
          alert("에러발생");
        }			
      });
    });
  });
  </script>
</head>
<body>
  <form id="form1">
    <input type="text" name="val" value="ajax 테스트" id="val"></input>
    <input type="text" name="num" value="12345" id="num"></input>
    <input type="button" value="call" id="callBtn"></input>
  </form>
</body>
</html>