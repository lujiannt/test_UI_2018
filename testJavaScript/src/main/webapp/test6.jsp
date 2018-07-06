<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>javascript echarts</title>

<script type="text/javascript" src="js/echarts.common.min.js"></script>


</head>
<body>
	<div id="mychart" style="height:400px;width: 600px"></div>
	<script type="text/javascript">
	var chart;
	var option = {
            title: {
                text: 'ECharts 入门示例'
            },
            tooltip: {},
            legend: {
                data:['销量','金额']
            },
            xAxis: {
                data: ["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]
            },
            yAxis: {},
            series: [{
                name: '销量',
                type: 'bar',
                data: [5, 20, 36, 10, 10, 20]
            },
            {
                name: '金额',
                type: 'bar',
                data: [15, 10, 26, 30, 30, 25]
            }
            ]
        };
	
	option.yAxis.min=0;
	option.yAxis.max=100;
		
	
		chart = echarts.init(document.getElementById('mychart'));
		chart.setOption(option);
	</script>
</body>
</html>