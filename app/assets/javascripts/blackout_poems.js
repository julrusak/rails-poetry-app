$( document ).ready(function(){
	$("#text-box").delegate("span", "click", function() {
		$("#done").css('visibility', 'visible');
		$(this).toggleClass("blackout");
	})

	$("#done").click(function() {
	  $("#text-box span.blackout").hide();
	  $("#start-over").css('visibility', 'visible');
	  $("#submit").css('visibility', 'visible');
	})

	$("#start-over").click(function(){
		$("#text-box span.blackout").show();
		$("#text-box span.blackout").removeClass("blackout");
	})
	$("#submit").click(function(){
		$("#text-box span.blackout").remove();
		var spans = document.getElementById('text-box').getElementsByTagName('span'),
	    obj = [];
		for (var i = 0, l = spans.length; i < l; i++) {
		    obj.push(spans[i].textContent || spans[i].innerText);
		}
		var poem = obj.join(' ');
		document.getElementById('textarea').value += poem;
	});
});