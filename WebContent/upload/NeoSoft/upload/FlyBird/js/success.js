// JavaScript Document
$(function(){
	qqq();
	textpaper();
	look();	
	});
function qqq(){
	$(".one1,.live").hover(function(){
		$($(".live").get($(this).index()-1)).removeClass("div_display");
		$(".one1,.live").css("border","solid #FF9 5px");
	},function(){
		$(".live").addClass("div_display");
		$(".one1,.live").css("border","");
	});	
	
	$(".one2,.live").hover(function(){
		$($(".live").get($(this).index()-1)).removeClass("div_display");
		$(".one2,.live").css("border","solid #FF9 5px");
	},function(){
		$(".live").addClass("div_display");
		$(".one2,.live").css("border","");
	});	
	
	$(".one3,.live").hover(function(){
		$($(".live").get($(this).index()-1)).removeClass("div_display");
		$(".one3,.live").css("border","solid #FF9 5px");
	},function(){
		$(".live").addClass("div_display");
		$(".one3,.live").css("border","");
	});	
	
	$(".one4,.live").hover(function(){
		$($(".live").get($(this).index()-1)).removeClass("div_display");
		$(".one4,.live").css("border","solid #FF9 5px");
	},function(){
		$(".live").addClass("div_display");
		$(".one4,.live").css("border","");
	});	
	
	$(".one5,.live").hover(function(){
		$($(".live").get($(this).index()-1)).removeClass("div_display");
		$(".one5,.live").css("border","solid #FF9 5px");
	},function(){
		$(".live").addClass("div_display");
		$(".one5,.live").css("border","");
	});	
}


function textpaper(){
	
}
/*点击查看消息关闭消息*/
function look(){
$(document).ready(function(){
 $(".fensi").hide();
	
  $("#show").click(function(){
    $(".fensi").show();
	$("#show").hide();
  });
	
	 $("#hide").click(function(){
    $(".fensi").hide();
	$("#show").show();
  });
	
	 
});



}