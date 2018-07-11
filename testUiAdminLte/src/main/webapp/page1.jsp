<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="lte/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript">
function funsad() {
	alert(123);
	$("#hee2").html("hello world");
}
</script>
</head>
<body>
	<H1>page1</H1>
	<h2 id="hee2" onclick="funsad()">click me</h2>
</body>
</html>