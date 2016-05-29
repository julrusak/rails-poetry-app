$( document ).ready(function(){
	$("#text-box").delegate("span", "click", function() {
		$(this).toggleClass("blackout");
	});
});