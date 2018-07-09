//content
var showTabContent = function (target, option) {
	target.attr("src",option.url);
}

//清除tabs
var clearTabs = function () {
	var target = $("#tabContent");
	$(".tab-clean").remove();
	showTabContent(target, {
			"url" : ""
	});
}

//普通tab
$.fn.addTabs = function (option) {
	var ul = $(this);
	var target = $("#tabContent");
	$(".nav-link").removeClass("active");
	
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
	        "class": "nav-link active show",
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
	var target = $("#tabContent");
	$(".nav-link").removeClass("active");
	
	//tab
	if($("#"+option.id)[0]!=null) {
		$("#"+option.id).addClass("active");
	}else {
	    var a = $("<a />", {
	    	"id": option.id,
	    	"href":"#",
	        "class": "nav-link nav-item active tab-clean",
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
	clearTabs();
}
