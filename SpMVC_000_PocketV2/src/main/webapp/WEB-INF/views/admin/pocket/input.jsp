<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${rootPath}/pocketIn">
		<input class="pocket" name="id" type="number" placeholder="당구대번호" 
		onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
		<button >당구대 추가</button>
	</form>
</body>
</html>