$(document).ready(function(){
	$('input[id|="SearchInput__city"]').focus(function(){
	// $('input[id^="SearchInput__city"]').focus(function()){
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
		

		$("input.down").click(function(e){
		e.stopPropagation();
		$("div.con").removeClass("hide");
		});
		$(document).click(function(){
		if(!$("div.con").hasClass("hide")){
		$("div.con").addClass("hide");
		}
		});
		
		
	//========= card ===========
	var figure = $(".video").hover( hoverVideo, hideVideo );

	function hoverVideo(e) {  
	    $('video', this).get(0).play(); 
		// $('.card-container').add
	}

	function hideVideo(e) {
	    $('video', this).get(0).pause(); 
		// $('.card-container').hide();
	}
	
	$(".video").click( function(){
		$('video', this).get(0).pause(); 
	});
		

});






