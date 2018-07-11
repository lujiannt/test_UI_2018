//tab标签及主页其他相关样式功能
//TODO 1.使用map保存当前tab，点击左侧链接和tab时不要重新加载 2.结果删除tab报的错误
$(function () {
	//tab页面对对应url映射
	var tabHtmlMap = new Map();
	//最多tab数
	var maxTagsNum = 3;
	//iframe窗口
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

	//点击链接时，如果tab已存在,则激活
	//不存在，则要判断tab数量是否超过最大限制
	$.fn.addTabsPills = function (option) {
		var flag = false;
		var opentabs = $(".nav-link-tab");
		$.each(opentabs,function(index,value){
			if($(this).attr('id') == option.id) {
				flag = true;
			}
		});
		alert(flag);
		if(flag) {
			showOldTab(option);
		}else {
			if((opentabs.length+1) > maxTagsNum) {
				//TODO alert弹框
				alert("最多"+maxTagsNum+"个标签页");
			}else {
				showNewTab(option);
			}
		}
	}
	
	//新增胶囊式tab
	function showNewTab(option) {
		saveOldTabContent();
		
		//tab
		$(".nav-link-tab").removeClass("active");
		
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
		
		//iframe中加载content
		showTabContent(target,option);
	}

	//map中跳转到新tab前保存上个tab中的html
	function saveOldTabContent() {
		var opentabs = $(".nav-link-tab");
		var activetabs = $(".active");
		if(opentabs.length > 0) {
			$.each(activetabs,function(index,value){
				var frameObj = document.getElementById("tabContent"); 
				var html = frameObj.contentWindow.document.body.innerHTML;
				tabHtmlMap.put($(this).attr("id"), html);
				//alert(tabHtmlMap.get($(this).attr("id")));
			});
		}
	}
	
	//清除tab
	$.fn.cleanTabs = function (option) {
		clearTabs(option);
	}
	
	//激活老的tab
	function showOldTab(option) {
		saveOldTabContent();
		
		$(".nav-link-tab").removeClass("active");
		$("#"+option.id).addClass("active");
		
		//iframe中加载content
		target.html(tabHtmlMap.get(option.id));
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
