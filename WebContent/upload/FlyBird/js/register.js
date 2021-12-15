function add(){
	var username = document.getElementById("username").value;
	if(username==""){
		alert("你还没有输入昵称哦！");
		return;
	}
	var password = document.getElementById("password").value;
	if(password == ""){
		alert("你还没有设置密码");
		return;
	}
	if(isNaN(password)){
		alert("密码必须是数字！！！");
		return;
	}
	var age = document.getElementById("age").value;
	if(age == ""){
		alert("你还没有输入年龄");
		return;
	}
	if(isNaN(age)){
		alert("年龄必须是数字！！！");
		return;
	}
	var sex = document.getElementById("sex").value;
	if(sex == ""){
		alert("你还没有选择性别");
		return;
	}
	var tall = document.getElementById("tall").value;
	if(tall == ""){
		alert("你还没有输入身高");
		return;
	}
	if(isNaN(tall)){
		alert("身高必须是数字！！！");
		return;
	}
	var address = document.getElementById("address").value;
	if(address == ""){
		alert("你还没有输入住址");
		return;
	}
	var education = document.getElementById("education").value;
	if(education == ""){
		alert("你还没有选择学历");
		return;
	}
	var money = document.getElementById("money").value;
	if(money == ""){
		alert("你还没有输入工资");
		return;
	}
	if(isNaN(money)){
		alert("工资必须是数字！！！");
		return;
	}
	var nature = document.getElementById("nature").value;
	if(nature == ""){
		alert("请选择个性标签");
		return;
	}
	document.getElementsByName("myform")[0].action = "user!addAction.action";
	document.getElementsByName("myform")[0].method = "post";
	document.getElementsByName("myform")[0].submit();
	}
		
	
		
