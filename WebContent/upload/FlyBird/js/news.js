/**
 * 
 */
$(function(){
	moment();
	});
function moment(){
	$("#one").click(function(){
	$(".middle1").show();
	$(".middle2,.middle3").hide();
	$("#reone").show();
	$("#retwo,#rethree").hide();
	});
	
	$("#two").click(function(){
	$(".middle2").show();
	$(".middle1,.middle3").hide();
	$("#retwo").show();
	$("#reone,#rethree").hide();
	});
	
	$("#three").click(function(){
	$(".middle3").show();
	$(".middle1,.middle2").hide();
	$("#rethree").show();
	$("#retwo,#reone").hide();
	});
	}
