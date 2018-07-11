$(function () {
	//TODO 1.使用map保存当前tab,最多只能打开5个，要不然存的太多 2.结果删除tab报的错误 
	var target = $("#tabContent");
	
	//content
	var showTabContent = function (target, option) {
		target.attr("src",option.url);
	}

	//清除单个tab
	var clearTab = function (option) {
		var tabs = $(".nav-link-tab");
		var activetabs = $(".active");
		var length = tabs.length-1;
		var flag = true;
		
		//1.判断当前tab数量,如果为0直接跳到主页不做任何操作，如果为1，删除后也跳到主页
		//2.如果大于1.则判断是否有被选中的tab页
		//3.没有的话将删除掉所要删的tab后的最后一个tab指定为选中状态
		//4.如果有已选中的tab，判断是否是要删除的那个，如果是走3
		//5.如果不是，删除掉要删的tab后，其余不变
		if(length == 0) {
			$(".nav-link-tab").removeClass("active");
			$("#"+option.id).remove();
			target.attr("src","home.jsp");
		}else {
			if(activetabs.length == 1){
				$.each(activetabs,function(index,value){
					if($(this).attr("id") != option.id) {
						$("#"+option.id).remove();
						flag = false;
					}
				});
			}
			
			if(flag) {
				$(".nav-link-tab").removeClass("active");
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
		var tab = $(this);
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
		    
		    a.append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		    a.append(icon);
		    $("#tabs-caozuo").before(a);
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
	
	//刷新当前页
	$("#refreshTab").bind("click",function(){
		var activetabs = $(".active");
		if(activetabs.length == 1){
			$.each(activetabs,function(index,value){
				target.attr("src",$(this).attr("tabUrl"));
			});
		}
	})
});
