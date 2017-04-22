$(document).ready(function(){
	$('input[id^="SearchInput__"]').focus(function(){
		// $(this).css("background-color", "#cccccc");
	    $(".SearchDropDownWrapper").show();
	});
	// $("input").blur(function(){
	// 	$(this).css("background-color", "#ffffff");
	//     $("#DropDown_br").hide();
	// });
	
	$(".Destination").click(function(){
		// $(this).css("background-color", "#ffffff");
		// console.log('ddddddd', $(this).value())
		console.log("dddddddddddd");
		console.log($(this).text());
		console.log($("#LocationSearch_input").attr("placeholder"));
		$("#SearchInput__city:text").val($(this).text())
		// $("#LocationSearch_input").value("nice");
	    $(".SearchDropDownWrapper").hide();
	});
	
		//     $("div").click(function(){
		// var thisone = document.activeElement;
		// var thatone = document.getElementsByClassName("SearchContainer")
		//         if(!($.contains(thatone, thisone))) {
		//         	$(".SearchDropDownWrapper").hide();
		//         }
		//     });
});






