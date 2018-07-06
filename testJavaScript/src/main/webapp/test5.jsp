<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>javascript json</title>

<!-- json对象 -->
<script type="text/javascript">
	//和对象字面量的区别是键要加双引号
	var obj = {
			"name" : "张三",
			"age" : 11,
			"sayName" : function() {
				console.log(this.name);
			}
	}
	
	console.log(obj.name);
	obj.sayName();
</script>

<script type="text/javascript">
	//遍历
	var obj = {
			"name" : "张三",
			"age" : 11,
			"sex" : "women"
	}
	
	for(var k in obj) {
		console.log("key="+k);
		console.log("value="+obj[k]);
	}
</script>

<!-- 基本包装类型 -->
<script type="text/javascript">
	var str = new String("asa");
	var num = new Number("10");
	console.log(str);
	console.log(num);
</script>

</head>
<body>
	<h3>注意点</h3>
	<p>
		1.json对象
	</p>
	<p>
		2. 基本包装类型<br>
	</p>
	
</body>
</html>