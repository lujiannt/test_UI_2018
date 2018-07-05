<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>javascript 函数、变量作用域</title>

<!-- 1.测试作用域与声明提升 -->
<script type="text/javascript">
	//测试num作用域
	var num = 12;
</script>

<script type="text/javascript">
	//测试num作用域
	alert(num);
</script>

<script type="text/javascript">
	//测试声明提升，提升变量不提升值。这里输出的是Hello yang
	var name = "world";
	
	(function () {
		if (typeof name == 'undefined') {
			var name = 'yang';//这里会把var name声明提升,把 var去掉就正常输出 hello world
			console.log('Hello ' + name);
		} else {
			console.log('Hello ' + name);
		}
	})()
</script>

<!-- 2.测试函数-->
<script type="text/javascript">
	//将三种不同方式定义的函数，放在前面执行
	//函数1:
	testF1();//函数整体提升
	
	//函数2:
	//testF2();//函数整体不提升,放开会出错
	//alert(testF2);//声明会提升，,放开是undifined
	
	//函数3:
	//testF3();//函数不提升,放开会出错
	//alert(testF3);//声明也不提升,放开会出错
	
	function testF1() {
		console.log('testF1');
	}
	
	var testF2 = function() {
		console.log('testF2');
	}
	
	window.testF3 = function() {
		console.log('testF3');
	}
	
	//放在后面执行没什么区别
	testF1();
	testF2();
	testF3();
</script>

<script type="text/javascript">
	//测试函数提升，声明提升例子
	console.log(a); // 输出a函数体
	function a() {
	    console.log("aaaaa");
	}
	var a = 1;
	console.log(a); // 输出1
</script>

<script type="text/javascript">
	//测试函数提升，整体提升
	testF1();
	var aaa = "testF1函数提升 111";
	function testF1() {
		console.log(aaa);
		var aaa = "testF1函数提升 222";
	}
</script>

<!-- 3.匿名函数 -->
<script type="text/javascript">
	//直接调用
	(function(){
		console.log("匿名函数1");
	})();
	
	//触发
	document.onclick = function() {
		console.log("匿名函数2");
	}
	
	//定时器
	setInterval(function(){
		console.log("匿名函数3");
	},1000);
</script>

</head>
<body>
	<h3>注意点</h3>
	<p>
		1.js中不存在块级作用域，只存在全局和局部作用域
	</p>
	<p>
		2.声明的提升https://www.cnblogs.com/guanhuachen/p/6038957.html
	</p>
	<p>
		3.函数的提升,函数内部有存在声明提升
	</p>
	<p>
		4.不同函数的定义方式，函数提升声明提升也不一样，要注意函数定义和执行位置的前后顺序
	</p>
	<p>
		5.匿名函数，有可以立即执行,防止函数名污染等作用
	</p>
	
</body>
</html>