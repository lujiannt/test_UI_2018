<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>javascript 变量</title>

<script type="text/javascript">
	console.log("看看执行不执行");
	console.log("看看执行不执行");
	console.log("看看执行不执行");
	//测试错误
	asds
	console.log("错误后，看看执行不执行");
</script>

<script type="text/javascript">
	//测试变量类型
	function testF() {
		
	}
	var name = "zansan";
	var age = 11;
	var flag = true;
	
	console.log("函数testF类型: "+typeof(testF));
	console.log("变量name类型: "+typeof(name));
	console.log("变量age类型: "+typeof(age));
	console.log("变量flag类型: "+typeof(flag));
</script>

<script type="text/javascript">
	//null和undefined的区别
	console.log(null + 1);
	console.log(undefined + 1);
</script>
</head>
<body>
	<h3>注意点</h3>
	<p>
		1.javaScript组成（Document Object Model的文档对象模型简称,操作网页上元素,简称dom;Browser Object Model的浏览器对象模型,操作浏览器部分功能,简称bom;javaScript语法规范ECMAScript）
	</p>
	<p>
		2.script代码块中如果出错，该代码块下面内容不会执行；但是不会影响其他script<br>
	</p>
	<p>
		3.javaScript中使用的是弱变量<br>
	</p>
	<p>
		4.常见类型 String、number、boolean、undefined、 null<br>
	</p>
	<p>
		5.复杂类型 Object、Date、function等<br>
	</p>
</body>
</html>