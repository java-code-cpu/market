$(document).ready(function(){
	alert("aaa");
	initTalbeData1();
	//选择市信息
    $('#proCode').on('change',function(){
    	$("#cityCode option").remove();
    	$("#areaCode option").remove();
    	var option='<option>市信息</option>';
		var areaCode=$("#proCode").val();
		console.log(code);
		$.ajax({
			 url:'address/findAll/'+areaCode,
			 success:function(result){
				 $.each(result, function(index, item) {
					 option+= '<option value="'+item.areaCode+'">'+item.areaName+'</option>';
					 console.log(option);
				 });
				 $("#cityCode").append(option);

			 }
		 });
    
	});
    //选择区信息
    $('#cityCode').on('change',function(){
    	$("#areaCode option").remove();
    	var option='<option>区信息</option>';
		var areaCode=$("#cityCode").val();
		
		console.log(code);
		$.ajax({
			 url:'address/findByCode/'+areaCode,
			 success:function(result){
				 $.each(result, function(index, item) {
					 
					 option+= '<option value="'+item.areaCode+'">'+item.areaName+'</option>';
					 
					 console.log(option);
	
				 });
				 $("#areaCode").append(option);
				
			 }
		 });
    });
	
})
function initTalbeData1() {
	$.ajax({
		url : 'address/find',
		success : function() {
		}
	});
}
