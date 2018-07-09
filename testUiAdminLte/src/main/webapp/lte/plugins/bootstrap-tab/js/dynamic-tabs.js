$(function () {
	var target = $("#tabContent");
	
	//content
	var showTabContent = function (target, option) {
		target.attr("src",option.url);
	}

	//清除单个tab
	var clearTab = function (option) {
		var tabs = $(".nav-link-tab");
		var length = tabs.length-1;
		
		if(length == 0) {
			target.attr("src","home.jsp");
			$("#"+option.id).removeClass("active");
			$("#"+option.id).remove();
		}else {
			$("#"+option.id).removeClass("active");
			$("#"+option.id).remove();
			var newtabs = $(".nav-link-tab");
			$.each(newtabs,function(index,value){
			     if(index == length-1) {
			    	 $("#"+$(this).attr('id')).addClass("active");
			    	 target.attr("src",$(this).attr('tabUrl'));
			     }
			});
		}
	}
	
	//清除所有tab
	var clearTabs = function (option) {
		$(".tab-clean").remove();
		showTabContent(target, {
				"url" : option.url
		});
		$(".cleanTabs").hide();
	}

	//胶囊式tab
	$.fn.addTabsPills = function (option) {
		var nav = $(this);
		$(".nav-link-tab").removeClass("active");
		
		//tab
		if($("#"+option.id)[0]!=null) {
			$("#"+option.id).addClass("active");
		}else {
		    var a = $("<a />", {
		    	"id": option.id,
		    	"href":"#",
		        "class": "nav-link nav-item nav-link-tab active tab-clean",
		        "data-toggle": "tab",
		        "text": option.title,
		        "tabUrl": option.url,
		        "click": function () {
		        	if($(this)!=null)
		        		showTabContent(target, option);
		        }
		    });
		    
		    var icon = $("<i />", {
		    	"class" : "icon iconfont icon-aui-icon-close",
		    	"mouseenter": function(){
		    		$(this).attr("class","icon iconfont icon-close");
		    	},
		    	"mouseout": function(){
		    		$(this).attr("class","icon iconfont icon-aui-icon-close");
		    	},
		        "click": function () {
		        	clearTab(option);
		        }
		    }); 
		    
		    a.append("&nbsp;&nbsp;&nbsp;&nbsp;");
		    a.append(icon);
		    nav.append(a);
		}
		
		//content
		showTabContent(target,option);
	}

	//清除tab
	$.fn.cleanTabs = function (option) {
		clearTabs(option);
	}
	
	
	
	
	//----------------------------业务实现-------------------------------
	var tab = $("#myTabs");	
	
	//点击菜单链接显示tab和content
	$(".nav-link-url").bind("click", function(){
		var option = {
				"id":$(this).attr("tabId"),
				"title":$(this).attr("title"),
				"url":$(this).attr("url")
		}
		
		tab.addTabsPills(option);
	});
	
	//清除所有tab
	$(".cleanTabs-icon").bind("click", function(){
		var option = {
				"url":""
		}
		tab.cleanTabs(option);
	});
	
	//点击主页
	$("#homeTab").bind("click", function(){
		$(".nav-link-tab").removeClass("active");
		showTabContent(target, {
			"url" : "home.jsp"
		})
	});
});
