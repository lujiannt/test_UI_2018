<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Page1</title>

<jsp:include  page="../header.jsp"/>

<script data-main="/js/main" src="/js/lib/require.js"></script>
<script type="text/javascript">
	requirejs(["app/hello/hello"]);

	var i=0;
	function addI() {
		i++;
		console.log("i="+i);
	}
	
	function funsad() {
		$("#hee2").html("hello world");
	}
</script>
</head>
<body>
<aside>
	<H1>page1</H1>
	<div class="card">
	<h2 id="hee2" onclick="funsad()">click me</h2>
	<h2 id="hee2" onclick="addI()">i++</h2>
	</div>
	
	
	
</aside>
</body>
</html>