<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include  page="header.jsp"/>

<script data-main="/js/main" src="/js/lib/require.js"></script>
<script>
	requirejs(["app/hello/hello"]);
</script>
</head>
<body style="background-color:transparent;">

	<iframe src="/hello/page1" scrolling="auto" frameborder="0" onload="this.height=this.contentWindow.document.documentElement.scrollHeight"></iframe>
</body>
</html>