<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>javascript 函数、变量作用域</title>

<!-- 测试作用域 -->
<script type="text/javascript">
	var num = 12;
</script>
<script type="text/javascript">
	alert(num);
	
</script>
<script type="text/javascript">
	var name = "world";
	(function () {
	if (typeof name == 'undefined') {
	var name = 'yang';
	console.log('Hello ' + name)
	} else {
	console.log('Hello ' + name)
	}
	})()
</script>

</head>
<body>
	<h3>注意点</h3>
	<p>
		1.js中不存在
	</p>
	<p>
		2.switch底层用的是 === 比较<br>
	</p>
	
</body>
</html>