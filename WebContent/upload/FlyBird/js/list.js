$(function(){
	
});

function focus(){
	$(".focusno").hide();
	$(".focusyes").click(function(){
		$(".focusyes").hide();
		$(".focusno").show();
	});
	
	$(".focusno").click(function(){
		$(".focusno").hide();
		$(".focusyes").show();
	});
}


$(document).ready(function(){
	 $(".focusno").hide();
		
	  $(".focusyes").click(function(){
		  $(".focusyes").hide();
	    $(".focusno").show();
	  });
		
		 $(".focusno").click(function(){
	    $(".focusno").hide();
		$(".focusyes").show();
	  });
		
	 $(".focusyes").hide();
		 
	});