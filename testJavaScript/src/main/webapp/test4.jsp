<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>javascript 面向对象</title>

<!-- 1.最简单方法创建对象  -->
<script type="text/javascript">
	//js中没有类，1个类可能会有多个对象，使用该方法会有很多重复代码
	var obj = new Object();
	obj.name = "张三";
	obj.age = 11;
	obj.eat = function(){
		 console.log("我很能吃");
	}
	
	console.log(obj.name);
	console.log(obj.age);
	obj.eat()
</script>

<!-- 2.通过函数创建对象  -->
<script type="text/javascript">
	function creatObj(name,age) {
		var obj = new Object();
		obj.name = name;
		obj.age = age;
		obj.eat = function(){
			 console.log("我很能吃");
		}
		return obj;
	}
	
	var obj1 = creatObj("李四",12);
	console.log(obj1.name);
	obj1.eat();
</script>

<!-- 3.使用构造函数创建对象  -->
<script type="text/javascript">
	//与上面函数创建对象相比：无return，实例化对象时需要new+构造函数(同java)
	function CreatObj(name,age) {
		this.name = name;
		this.age = age;
		this.sayName = function(){
			console.log(this.name);
		};
	}
	
	var obj2 = new CreatObj("王五",13);
	console.log(obj2.name);
	obj2.sayName();
</script>

<!-- 4.进阶版使用构造函数创建对象  -->
<script type="text/javascript">
	//在3的基础上将公用方法抽离出去成为一个全局的函数
	function CreatObj(name,age) {
		this.name = name;
		this.age = age;
		this.sayName = sayName;
	}
	
	function sayName() {
		console.log(this.name);
	}
	
	var obj3 = new CreatObj("王五",13);
	console.log(obj3.name);
	obj3.sayName();
</script>

<!-- 5.对象字面量创建对象  -->
<script type="text/javascript">
	var obj4 = {
			name:"刘琦",
			age:20,
			eat:function() {
				console.log(this.name);
			}
	}
	
	console.log(obj4.name);
	obj4.eat();
	console.log(obj4["name"]);
	
	//方括号的优点
	var proName = "name";
	console.log(obj4[proName]);//使用方括号可以动态传递属性名
	console.log(obj4["name name"]);//使用方括号可以传递关键字或非法字符的属性名
</script>

</head>
<body>
	<h3>注意点</h3>
	<p>
		1.创建对象、通过函数和通过构造函数创建对象的区别及优缺点
	</p>
	<p>
		2.switch底层用的是 === 比较<br>
	</p>
	
</body>
</html>