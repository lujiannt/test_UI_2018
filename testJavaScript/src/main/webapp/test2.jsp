<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>javascript switch</title>

<script type="text/javascript">
	var num = 2;
	switch (num){
		case 1:
			alert(true);
		case 2:
			alert(false);
	}
</script>

</head>
<body>
	<h3>注意点</h3>
	<p>
		1.==用于一般比较，===用于严格比较，==在比较的时候可以转换数据类型，===严格比较，只要类型不匹配就返回flase
	</p>
	<p>
		2.switch底层用的是 === 比较<br>
	</p>
	
</body>
</html>