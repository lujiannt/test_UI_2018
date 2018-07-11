$(function () {
	function funsad() {
		//$("#hee2").html("hello world");
		alert("yes");
	}
	
	$("#hee2").bind("click", funsad());
});

define(["page"], function(a) {
	 'use strict';
	 function info() {
	  console.log("我是私有函数");
	 }
	 return {
	  name:"一个属性",
	  test:function(a){
	   console.log(a+"你好！");
	   a.f();
	   info();
	  }
	 }
	});