<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>javascript 函数、变量作用域</title>

<script type="text/javascript">
	//测试num作用域
	var num = 12;
</script>

<script type="text/javascript">
	//测试num作用域
	alert(num);
</script>

<script type="text/javascript">
	//测试声明提升，这里输出的是Hello yang
	var name = "world";
	
	(function () {
		if (typeof name == 'undefined') {
			var name = 'yang';//这里会把var name声明提升,把 var去掉就正常输出 hello world
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
		1.js中不存在块级作用域，只存在全局和局部作用域
	</p>
	<p>
		2.声明提升https://www.cnblogs.com/guanhuachen/p/6038957.html
	</p>
	
</body>
</html>