$(document).ready(function() {
			initTalbeData();

			//绑定新增按钮
			$('#button_add').off('click').on('click', function() {
				$('#form_shop_add_edit')[0].reset;
				$('#modal_shop').modal('show');
				$('.formError').remove();
				$('#rowId').removeAttr('value');
				$('#action_info').html('新增');
			})
			//表单提交
			$('#button_submit').off('click').on('click', function() {
				$('#form_shop_add_edit').submit();
				saveOrUpdate();
			});

			//绑定删除按钮
			$('#shopTable_wrapper').off('click', '#deleteS').on('click','#deleteS', function() {
						var rowId = $(this).attr("data-rowId");
						if (confirm("您确定要删除吗？？")) {
							alert("执行删除！")
							$.ajax({
								type : 'post',
								url : 'shop/delete/' + rowId,
								success : function(result) {
									if (result) {
										alert("删除成功！！")
										initTalbeData();
									}
								}
							});
						}
					});

		});

function saveOrUpdate() {
	var rowId = $('#rowId').val();
	alert(rowId);
	if (rowId) {// 修改
		var formObj = $('#form_shop_add_edit')[0];
		var formData = new FormData(formObj);
		$.ajax({
			type:'post',
			url:'shop/update',
			data:formData,
			catch:false,
			processData:false,
			contentType:false,
			success:function(){
				initTalbeData();
			}
		});
	} else {
		var formObj = $('#form_shop_add_edit')[0];
		var formData = new FormData(formObj);
		$.ajax({
			type:'post',
			url:'shop/add',
			data:formData,
			catch:false,
			processData:false,
			contentType:false,
			success:function(){
				initTalbeData();
			}
		});
	}
}

function initTalbeData() {
	$.ajax({
		url : 'shop/find/',
		dataType : 'html',
		success : function(htmlData) {
			$('#shopTable_wrapper').html(htmlData);
		}
	});
}
function goupdateS(rowId) {
	alert(rowId);
	$.ajax({
		url : 'shop/goupdateS/'+rowId,
		success : function(shop) {
			if (shop) {
				$('#modal_shop').modal('show');
				$('#cataId').val(shop.cataId);
				$('#shopName').val(shop.shopName);
				$('#shopNo').val(shop.shopNo);
				$('#shopPrice').val(shop.shopPrice);
				$('#shopStockNum').val(shop.shopStockNum);
				$('#shopJsjtate').val(shop.shopJsjtate);
				$('#shopInfo').val(shop.shopInfo);
				$('#rowId').val(shop.rowId);
				$('#action_info').val("修改");
			}
		}
	});
}
