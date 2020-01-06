$(document).ready(function() {
	alert("aaaa");
	findq();
	/*$('#button_register').on('click', function() {
		alert("点击动作");
		$.ajax({
			type : "post",
			url : 'register',
			data : $('#UserRegister').serialize(),
			dataType : 'json',
			success : function(result) {
				if (result) {
					alert("注册成功！！");
				}
			}
		});
	})*/
	$('#login').on('click', function() {
		$.ajax({
			type : 'post',
			url : 'login',
			data : $('#userLogin').serialize(),
			dataType : 'json',
			success : function(result) {
				alert("登陆成功！！");
			}
		});
	});
	$('#logout').on('click',function(){
		$.ajax({
			url:'logout',
			success:function(result){
				if(result){
					windows.location.href="index";
				}
			}
			
		})
	})
	$('#button_change').on('click', function() {
		var rowId = $('#rowId').val();
		alert(123);
		$.ajax({
			type : 'post',
			url : 'update',
			data : $('#UserUpdate').serialize(),
			dataType : 'json',
			success : function(result) {
				if(result==1){
					windows.location.href="index";
				}
			}
		});
	});
	
	$('#button_register').on('click',function(){
		var formObj=$('#UserRegister')[0];
		var formData = new FormData(formObj);
		$.ajax({
			type:'post',
			url:'register',
			data:formData,//异步上传的二进制文件
			cache:false,//不缓存
			processData:false,//告诉jQuery不要去处理发送的数据
			contentType:false,// 告诉jQuery不要去设置content-Type请求头
			success:function(result){
				$("img").attr("src,result");
			}
		});
	});

});
/*
 * function doupdate(rowId){ $.ajax({ url:"goupdate"+rowId,
 * data:$('UserUpdata').serialize(), success:function(user){ alert(user);
 * $('#userName').val(user.userName); $('#userPhone').val(user.userPhone);
 * $('#userPass').val(user.userPass); $('#rowId').val(user.rowId); } }) };
 */