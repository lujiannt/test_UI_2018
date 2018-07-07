var showTabContent = function (target, option) {
//	var content = '<iframe scrolling="auto" frameborder="0"  src="'+option.url+'" style="width:100%;height:100%;"></iframe>';
	target.attr("src",option.url);
	target.html("");
	target.html(content);
}

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

