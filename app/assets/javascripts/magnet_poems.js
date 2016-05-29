$( document ).ready(function(){
	$("#text-box").delegate("span", "click", function() {
		console.log("clicked", this);
		$(this).toggleClass("blackout");
	});
});