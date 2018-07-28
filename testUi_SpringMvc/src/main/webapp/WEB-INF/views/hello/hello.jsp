<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<jsp:include  page="../header.jsp"/>
<script data-main="/js/main" src="/js/lib/require.js"></script>
<script>
	requirejs(["app/hello/hello"]);
</script>
</head>
<body>
<h1></h1>
	<div class="card">
		<div class="card-header">
  			<h3 class="card-title">Hello world</h3>
		</div>
  		<div class="card-body">
  			Hello world
  		</div>
	</div>
	
</body>
</html>