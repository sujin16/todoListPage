<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>jQuery</title>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
function btn_click(str){                             
    if(str=="update"){                                 
    	myForm.action="manage/update"; 
        alert('update');
    } else if(str=="delete"){      
    	myForm.action="manage/delete";      
        alert('update');
    }
}
</script>
</head>
<body>
	<form name="myForm" method= "post">
		<input type="submit" value="update" onclick='btn_click("update");'>
<input type="submit" value="delete" onclick='btn_click("delete");'>
 
	</form>
</body>
</html>