<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	
	<title>AdminLTE 3 | Starter</title>
	
	<!-- Font Awesome Icons -->
	<link rel="stylesheet" href="lte/plugins/font-awesome/css/font-awesome.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="lte/dist/css/adminlte.min.css">
	<!-- Google Font: Source Sans Pro -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
	<!-- icon style -->
	<link rel="stylesheet" type="text/css" href="lte/custom/icon/font-class/iconfont.css">
  
  
	<!-- jQuery -->
	<script src="lte/plugins/jquery/jquery.min.js"></script>
	<!-- AdminLTE App -->
	<script src="lte/dist/js/adminlte.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="lte/plugins/bootstrap/js/bootstrap.bundle.js"></script>
	
	<!-- Bootstrap 4 -->
	<script src="lte/plugins/bootstrap-tab/js/popper.min.js"></script>
	<script src="lte/plugins/bootstrap-tab/js/tab.js"></script>
	<script src="lte/plugins/bootstrap-tab/js/dropdown.js"></script>
	<script src="lte/plugins/bootstrap-tab/js/util.js"></script>
	<script src="lte/plugins/bootstrap-tab/js/dynamic-tabs.js"></script>
	
	<!-- basic -->
	<script src="js/basic/pop.js"></script>
	<script src="js/basic/common.js"></script>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

  <!-- Navbar -->
<nav class="main-header navbar navbar-expand bg-white navbar-light border-bottom">
  <!-- Left navbar links -->
	<ul class="navbar-nav">
		<li class="nav-item">
    		<a class="nav-link" data-widget="pushmenu" href="#"><i class="fa fa-bars"></i></a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
    		<a href="index3.html" class="nav-link">Home</a>
  		</li>
  		<li class="nav-item d-none d-sm-inline-block">
    		<a href="#" class="nav-link">Contact</a>
  		</li>
	</ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
    	<li class="nav-item d-none d-sm-inline-block">
        	<a href="#" class="nav-link">
	        <i class="icon iconfont icon-exit"></i>
	        	退出
	        </a>
      	</li> 
    </ul>
</nav>

<!-- tabs -->
<!--
<nav class="main-header navbar navbar-expand bg-white navbar-light border-bottom">
  	<ul class="nav nav-tabs" role="tablist" id="myTabs">
   	</ul>
</nav> 
-->
<nav id="myTabs" class="nav nav-pills main-header navbar navbar-expand bg-white navbar-light border-bottom" style="height: 45px">
	<ul class="navbar-nav">
		<li class="nav-item">
			<a class="nav-link" href="#" id="homeTab">
				<i class="icon iconfont icon-home"></i>
				
			</a>
		</li>
	</ul>
	
	<ul class="navbar-nav ml-auto" id="tabs-caozuo">
    	<li class="nav-item d-none d-sm-inline-block">
        	<a href="#" class="nav-link" id="refreshTab">
	        	<i class="icon iconfont icon-icon-refresh"></i>
	       		&nbsp;
	        </a>
      	</li> 
    </ul>
</nav>
<!-- /.navbar -->

<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
	<!-- Brand Logo -->
	<a href="index3.html" class="brand-link">
		<i class="icon iconfont icon-logo"></i>
		<span class="brand-text font-weight-light">Backstage</span>
	</a>

	<!-- Sidebar -->
	<div class="sidebar">
    <!-- Sidebar user panel (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
		<div class="image">
        	<img src="lte/dist/img/user3-128x128.jpg" class="img-circle elevation-2" alt="User Image">
      	</div>
    	<i class="icon iconfont icon-user"></i>
      	<div class="info">
        	<a href="#" class="d-block">admin</a>
      	</div>
	</div>

    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
     		<li class="nav-item has-treeview">
          <a href="#" class="nav-link" >
            <i class="nav-icon fa fa-pie-chart"></i>
            <p>
              Charts
              <i class="right fa fa-angle-left"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a tabId="page1" title="page1" url="page1.jsp" href="#" class="nav-link nav-link-url">
                <i class="fa fa-circle-o nav-icon"></i>
                <p>page1</p>
              </a>
            </li>
            <li class="nav-item">
              <a tabId="page2" title="page2" url="page2.jsp" href="#" class="nav-link nav-link-url">
                <i class="fa fa-circle-o nav-icon"></i>
                <p>page2</p>
              </a>
            </li>
            <li class="nav-item">
              <a tabId="page3" title="page3" url="page3.jsp"  href="#" class="nav-link nav-link-url">
                <i class="fa fa-circle-o nav-icon"></i>
                <p>page3</p>
              </a>
            </li>
            <li class="nav-item">
              <a tabId="baidu" title="baidu" url="https://baidu.com"  href="#" class="nav-link nav-link-url">
                <i class="fa fa-circle-o nav-icon"></i>
                <p>baidu</p>
              </a>
            </li>
            <li class="nav-item">
              <a tabId="jquery" title="jquery" url="https://jQuery.com"  href="#" class="nav-link nav-link-url">
                <i class="fa fa-circle-o nav-icon"></i>
                <p>jquery</p>
              </a>
            </li>
          </ul>
        </li>
      </ul>
    </nav>
  </div>
  <!-- /.sidebar -->
</aside>

  	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
    	<!-- Content Header (Page header) -->
	    <div class="content-header">
	    </div>
    	<!-- /.content-header -->

    	<!-- Main content -->
    	<div class="content" >
      		<div class="container-fluid">
        		<div class="row" >
					<iframe src="home.jsp" id="tabContent" scrolling="auto" frameborder="0" style="width:100%;height:800px">
					</iframe>
        		</div>
        	<!-- /.row -->
      		</div>
      		<!-- /.container-fluid -->
    	</div>
    	<!-- /.content -->
	</div>
	  <!-- /.content-wrapper -->

 	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
	   	<!-- Control sidebar content goes here -->
	   	<div class="p-3">
	    	<h5>Title</h5>
	     	<p>Sidebar content</p>
	   	</div>
	</aside>
 	<!-- /.control-sidebar -->

  	<!-- Main Footer -->
	<footer class="main-footer">
  		<!-- To the right -->
		<div class="float-right d-none d-sm-inline">
  			Anything you want
		</div>
		<!-- Default to the left -->
	  	<strong>Copyright &copy; 2014-2018 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
	</footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<script>

</script>
</body>
</html>
