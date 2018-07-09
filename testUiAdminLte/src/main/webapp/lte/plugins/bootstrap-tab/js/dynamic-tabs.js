$(function () {
	var target = $("#tabContent");
	
	//content
	var showTabContent = function (target, option) {
		target.attr("src",option.url);
	}

	//清除tabs
	var clearTabs = function (option) {
		$(".tab-clean").remove();
		showTabContent(target, {
				"url" : option.url
		});
		$(".cleanTabs").hide();
	}

	//普通tab
	$.fn.addTabs = function (option) {
		var ul = $(this);
		$(".nav-link-tab").removeClass("active");
		
		//tab
		if($("#"+option.id)[0]!=null) {
			$("#"+option.id).addClass("active");
		}else {
			var li = $("<li />", {
		        "class": "nav-item",
		    });
		    
		    var a = $("<a />", {
		    	"id": option.id,
		    	"href":"#",
		        "class": "nav-link nav-link-tab active show",
		        "data-toggle": "tab",
		        "role": "tab",
		        "url":option.url,
		        "text": option.title,
		        "click": function () {
		        	showTabContent(target, option);
		        }
		    });
		    li.append(a);
		    ul.append(li);
		}
		
		//content
		showTabContent(target,option);
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
		        "url":option.url,
		        "text": option.title,
		        "click": function () {
		        	showTabContent(target, option);
		        }
		    });
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
	
	$(".nav-link-url").bind("click", function(){
		var option = {
				"id":$(this).attr("tabId"),
				"title":$(this).attr("title"),
				"url":$(this).attr("url")
		}
		
		tab.addTabsPills(option);
	});
	
	$(".cleanTabs-icon").bind("click", function(){
		var option = {
				"url":""
		}
		tab.cleanTabs(option);
	});
	
	$("#homeTab").bind("click", function(){
		$(".nav-link-tab").removeClass("active");
		showTabContent(target, {
			"url" : "home.jsp"
		})
	});
});
