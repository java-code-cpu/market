$(document).ready(
		function() {
			// 查询所有的数据
			initTalbeData();
			$('#form_shop_add_edit').validationEngine('attach', {
				onValidationComplete : function(form, status) {
					//如果校验通过
					if(status){
						//执行 新增或修改
						saveOrUpdate();
					}
				}
			});
			// 绑定新增按钮
			$('#button_add').off('click').on('click', function() {
				$('#form_role_add_edit')[0].reset();
				$('#modal_role').modal('show');
				// 尝试清空所有的校验信息
				$('.formError').remove();
				// 尝试移除data-skip这个属性（为了唯一性校验）
				$('#roleName').removeAttr('data-skip');
				// $('#rowId').val('');
				$('#rowId').removeAttr('value');
				$('#action_info').html('新增');
			});
			// 绑定Submit按钮
			$('#button_submit').off('click').on('click', function() {
				// 让当前的表单执行提交动作
				// 表单提交动作会触发表单的校验。
				$('#form_role_add_edit').submit(); 
			});

			// 绑定 删除超连接事件
			$('#dataTable_wrapper').off('click', '#deleteA').on('click',
					'#deleteA', function() {
						// this = <a href="javascript:;" data-rowId="2">删除</a>
						// console.log(this);
						var rowId = $(this).attr("data-rowId");
						console.log(rowId);
						if (confirm("您确定要删除吗？")) {
							alert("执行删除"), 
							$.ajax({
							url : 'user/dodelete/' + rowId,
							success : function(result) {
							if (result) {
								alert("删除成功");
							initTalbeData();
									}
								}
							});
						}
					});

			$('#search_button').on('click', function() {
				$.ajax({
					type : 'post',
					url : 'findName',
					data : 'form_search'.serialize(),
					dataType : 'html',
					success : function(html) {

					}
				})
			})

		});
// 执行 新增或修改
function saveOrUpdate() {
	var rowId = $('#rowId').val();
	if (rowId) {// 如果主键有信息，则判断进行的是修改
		$.ajax({
			type : 'post',
			url : 'user/doupdate',
			data : $('#form_role_add_edit').serialize(),
			dataType : 'json',
			success : function(result) {
				if (result) {
					$('#modal_role').modal('hide');
					initTalbeData(1);
				}
			}
		});
	} else {// 则判断执行的是新增
		var formObj = $('#form_role_add_edit')[0];
		var formData = new FormData(formObj);
		$.ajax({
			type:'post',
			url:"user/add",
			data:formData,
			cache:false,
			processData:false,
			contentType:false,
			success:function(result){
				
			}
			
		});
	}
}
// go update
function goupdate(rowId) {
	$.ajax({
		url : 'user/goupdateS/' + rowId,
		dataType : 'json',
		success : function(user) {
			// if(true) js false()
			if (user) {
				// 将modal表单显示
				$('#modal_role').modal('show');
				// 尝试清空所有的校验信息
				$('.formError').remove();
				var userName = user.userName;
				// 在需要进行唯一性校验的field里面增加 data-skip这个属性并赋值。
				$('#userName').val(userName).attr('data-skip', userName);
				$('#userCode').val(user.userCode);
				$('#userPhone').val(user.userPhone);
				$('#rowId').val(user.rowId);
				$('#userLock').val(user.userLock);
				$('#activeFlag').val(activeFlag);
				$('#action_info').html('修改');
			}
		}
	});
}

function initTalbeData() {
	$.ajax({
		url : 'user/find/',
		dataType : 'html',
		success : function(htmlData) {
			$('#dataTable_wrapper').html(htmlData);
		}
	});
}