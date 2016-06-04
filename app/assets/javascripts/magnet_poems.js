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
	    onDragEnter:function(e,source){
	        $(source).draggable('options').cursor='auto';
	    },
	    onDragLeave:function(e,source){
	        $(source).draggable('options').cursor='not-allowed';
	    },
	    onDrop:function(e,source){
	        var word = $(source).html();
	        addWord(word);
	    }
	});
	var poem = {"words":[]};
	function addWord(name){
        poem.push(word);
	    $('#cartcontent').datagrid('loadData', poem);
	}    

});