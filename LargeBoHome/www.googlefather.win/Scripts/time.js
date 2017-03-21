function showTime() { 
	var currentDate = new Date(); 
	var startDate = new Date(2013, 03, 13);
	var date3 = currentDate-startDate;
	var days=Math.floor(date3/(24*3600*1000));
	var leave1=date3%(24*3600*1000);     //计算天数后剩余的毫秒数
	var hours=Math.floor(leave1/(3600*1000));
	var leave2=leave1%(3600*1000);        //计算小时数后剩余的毫秒数
	var minutes=Math.floor(leave2/(60*1000));
	var leave3=leave2%(60*1000);          //计算分钟数后剩余的毫秒数
	var seconds=Math.round(leave3/1000);
	if (minutes < 10) 
	minutes = "0" + minutes; 
	if (seconds < 10) 
	seconds = "0" + seconds; 
	var currentTimeString = "<p style='font-size: 30px;font-family: FontAwesome;color: white;'>Dear Nicole:</p><br>"
		+ "<p style='font-size: 30px;font-family: FontAwesome;color: white;'>I have been in love with you for:</p><br> "
		+ "&nbsp&nbsp&nbsp"
		+ "<c style=\"color: #CCFF99; text-shadow:2px 3px 3px #222; font-family:Microsoft YaHei; font-size:24px\" >" + days +" </c><a style='font-size:20px;font-family: FontAwesome;color: white;'>day</a> "
		+ "<c style=\"color: #CCFF99; text-shadow:2px 3px 3px #222; font-family:Microsoft YaHei; font-size:24px\" >" + hours+" </c><a style='font-size:20px;font-family: FontAwesome;color: white;'>hour</a> "
		+"<c style=\"color: #CCFF99; text-shadow:2px 3px 3px #222; font-family:Microsoft YaHei; font-size:24px\" >" + minutes+" </c><a style='font-size:20px;font-family: FontAwesome;color: white;'>min</a> "
		+"<c style=\"color: #CCFF99; text-shadow:2px 3px 3px #222; font-family:Microsoft YaHei; font-size:24px\" >" +seconds+" </c><a style='font-size:20px;font-family: FontAwesome;color: white;'>sec</a><br>"
		+ "&nbsp"+"<p style='font-size: 25px;font-family: FontAwesome;color: white;position: absolute;left: 220px;'>只愿执子之手,与子偕老.</p><br>"
		+ "&nbsp&nbsp&nbsp&nbsp&nbsp<br><br><br>"
		+	"<c style=\"position: absolute;left: 400px;color: #CCCCCC; text-shadow:2px 3px 3px #222; font-family:Microsoft YaHei; font-size:20px\" >googlefather.win   2013-03-18</c>";
	document.getElementById("show").innerHTML=currentTimeString;  //改这地方
	window.setTimeout("showTime()", 1000);
} 
