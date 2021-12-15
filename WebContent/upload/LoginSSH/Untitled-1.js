// JavaScript Document
$(function(){
	qqq();
	myfunction();
});

function qqq(){
	$(".middle1-1,.div_two_catalog").hover(function(){
		$($(".div_two_catalog").get($(this).index()-1)).removeClass("div_display");
		
	},function(){
		$(".div_two_catalog").addClass("div_display");
	});
}

function myfunction(){
	$("#btn").click(function(){
		$.ajax({
			type:'POST',
			url:' ${pageContext.request.contextPath}/user!loginCheck.action',
			dataType:'JSON',
			data:'username='+$("#aa").val()+"&password="+$("#bb").val(),
			success:function(data){
				if(!jQuery.isEmptyObject(data)){
					alert("用户名或密码错误!");
				}else{
					$("#loginform").submit();
				}
			}
		});
	});
	

}
