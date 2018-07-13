//tab标签及主页其他相关样式功能
$(function () {
	//点击链接时，如果tab已存在,则激活
	//不存在，则要判断tab数量是否超过最大限制
	var addTabsPills = function (option) {
		if($("#tab_"+option.id)[0]==null) {
			var a = $("<a />", {
		    	"id": "tab_"+option.id,
		    	"href":"#",
		        "class": "nav-link nav-item nav-link-tab",
		        "data-toggle": "tab",
		        "text": option.title,
		        "tabUrl": option.url,
		        "click": function () {
		        	$(".nav-link-tab").removeClass("active");
		    		$(".tab_row").hide();
		    		$("#tab_"+option.id).addClass("active");
		    		$("#tab_row_"+option.id).show();
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
		        	//clearTab(option);
		        }
		    }); 
		    
		    var div = $("<div />", {
				"id":"tab_row_"+option.id,
				"class":"row tab_row",
				"style":"width:"+$(".tabContent").width+"px;height:750px"
				
			});
			
			var iframe = $("<iframe />", {
				"id":"tab_iframe_"+option.id,
				"src":option.url,
				"class":"tab_iframe",
				"scrolling":"auto",
				"frameborder":"0",
				
			});
			
			a.append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
			a.append(icon);
			$("#tabs-caozuo").before(a);
			
			$(".tab_row").hide();
			div.append(iframe);
			$("#tabContent").append(div);
		}
		
		$(".nav-link-tab").removeClass("active");
		$(".tab_row").hide();
		$("#tab_"+option.id).addClass("active");
		$("#tab_row_"+option.id).show();
	}
	
	//----------------------------业务实现-------------------------------
	//点击菜单链接显示tab和content
	$(".nav-link-url").bind("click", function(){
		var option = {
				"id":$(this).attr("tabId"),
				"title":$(this).attr("title"),
				"url":$(this).attr("url")
		}
		
		addTabsPills(option);
	});
});
