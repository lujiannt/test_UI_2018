<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="lte/dist/css/adminlte.min.css">

</head>
<body>

 
<div class="container">
	<button class="btn btn-default mail" addtabs="mail" tabId="baidu" title="百度一下" url="https://baidu.com">
    	百度一下
	</button>
      <button class="btn btn-default mail"  addtabs="mail1" tabId="jQuery" title="jQuery" url="https://jQuery.com">
    	jQuery
	</button>
	<ul class="nav nav-tabs" role="tablist" id="myTabs">
		<li class="nav-item">
		  <a class="nav-link active" data-toggle="tab" href="#home" role="tab">Home</a>
		</li>
		<li class="nav-item">
		  <a class="nav-link" data-toggle="tab" href="#profile" role="tab">Profile</a>
		</li>
		<li class="nav-item dropdown">
		  <a class="nav-link dropdown-toggle" href="#" id="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
		  <div class="dropdown-menu" aria-labelledby="dropdown">
		    <a class="dropdown-item" data-toggle="tab" href="#fat" role="tab">@fat</a>
		    <a class="dropdown-item" data-toggle="tab" href="#mdo" role="tab">@mdo</a>
		  </div>
		</li>
	</ul>
	
	<div id="tabContent">
	
	</div> 
</div>

  
      
      
<script src="lte/plugins/jquery/jquery.min.js"></script>	
<script src="lte/plugins/bootstrap-tab/js/popper.min.js"></script>
<script src="lte/plugins/bootstrap-tab/js/tab.js"></script>
<script src="lte/plugins/bootstrap-tab/js/dropdown.js"></script>
<script src="lte/plugins/bootstrap-tab/js/util.js"></script>
<script src="lte/plugins/bootstrap-tab/js/dynamic-tabs.js"></script>


<script>
	var tab = $("#myTabs");
	$(".mail").bind("click", function(){
		var option = {
				"id":$(this).attr("tabId"),
				"title":$(this).attr("title"),
				"url":$(this).attr("url")
		}
		
		tab.addTabs(option);
	});
	
	$(".nav-link").bind("click", function(){
		alert(1);
		var option = {
				"id":$(this).attr("id"),
				"url":$(this).attr("url")
		}
		
		tab.showTab(option);
	});
</script>
</body>

</html>