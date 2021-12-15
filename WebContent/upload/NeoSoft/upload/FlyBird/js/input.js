function ajaxlogin(){
	var flag = check();
	if(flag){
		$.ajax({
			type:'POST',
			url:'user!checkAjaxAction1.action',
			dataType:'JSON',
			data:'userid='+$("#userid").val()+"&password="+$("#password").val(),
			success:function(data){
				if(data.status == "error"){
					alert("用户名或密码错误");
				}else if(data.status == "wrong"){
					alert("对不起，你还不是会员用户！！！")
				}else{
					alert("登陆成功！！！")
					document.getElementsByName("myforms1")[0].action = "user!fansAction.action";
					document.getElementsByName("myforms1")[0].method = "post";
					document.getElementsByName("myforms1")[0].submit();
				}
			}
		});
	}
}
//生成验证码
var code;
function createCode() { 
    code = "";
    var codeLength = 6; //验证码的长度
    var checkCode = document.getElementById("checkCode");
    var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 
    'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
    for (var i = 0; i < codeLength; i++) 
    {
        var charNum = Math.floor(Math.random() * 52);
        code += codeChars[charNum];
    }
    if (checkCode) 
    {
        checkCode.className = "code";
        checkCode.innerHTML = code;
    }
}  

function check(){
	var userid = document.getElementsByName("userid")[0].value;
	if(userid==""){
		alert("用户ID不能为空！！！");
		return false;
	}
	if(isNaN(userid)){
		alert("用户ID必须是数字！！！");
		return false;
	}
	var userpwd = document.getElementsByName("password")[0].value;
	if(userpwd==""){
		alert("用户密码不能为空！！！");
		return false;
	}
	var inputCode = document.getElementById("inputCode").value;
    if (inputCode.length <= 0) 
    {
        alert("请输入验证码！");
        return false;
    }
    else if (inputCode.toUpperCase() != code.toUpperCase()) 
    {
        alert("验证码输入有误！");
        createCode();
        return false;
    }
	return true;
}
