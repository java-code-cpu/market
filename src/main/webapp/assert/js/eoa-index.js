$(document).ready(function(){
	$('#left_menu').on('click','a',function(){
		var href = $(this).attr('href');
		//alert(href);
		$.ajax({
			url:href,
			dataType:'html',
			success:function(htmldata){
				$('#container-admin').html(htmldata);
			},
		});
		
		return false;
	});
});