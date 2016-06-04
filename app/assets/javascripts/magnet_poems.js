$( document ).ready(function(){
	$('.draggable').draggable({
	    revert:"invalid",
	    onStartDrag:function(){
	        $(this).draggable('options').cursor = 'not-allowed';
	        $(this).draggable('proxy').css('z-index',10);
	    },
	    onStopDrag:function(){
	        $(this).draggable('options').cursor='move';
	    }
	});

	$('#droppable').droppable({
	    onDragEnter:function(e,ui){
	        $(ui).draggable('options').cursor='auto';
	    },
	    onDragLeave:function(e,ui){
	        $(ui).draggable('options').cursor='not-allowed';
	    },
	    drop:function(e,ui){
	        var word = $("<div></div>").text( ui.draggable.text() ).text();
	        console.log(word);
	        // $( "<div></div>" ).text( ui.draggable.text() ).appendTo( this );
	        addWord(word);
	    }
	});
	var poem = {"words":[]};
	function addWord(text){
        poem.push(text);
	    $('#cartcontent').datagrid('loadData', poem);
	}    

});