$(document).ready(function(){
	$("input").focus(function(){
		$(this).css("background-color", "#cccccc");
	    $("#DropDown_br").show();
	});
	$("input").blur(function(){
		$(this).css("background-color", "#ffffff");
	    $("#DropDown_br").hide();
	});
});





