<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div class="col-sm-12">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">目录ID</th>
					<th scope="col">商品名称</th>
					<th scope="col">商品编号</th>
					<th scope="col">商品图片</th>
					<th scope="col">商品价格</th>
					<th scope="col">库存数量</th>
					<th scope="col">上下架状态</th>
					<th scope="col">商品介绍</th>
					<th scope="col">操作</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${!empty shoplist}">
					<c:forEach items="${shoplist}" var="shop">
						<tr>
							<th scope="row">${shop.rowId}</th>
							<td>${shop.cataId}</td>
							<td>${shop.shopName}</td>
							<td>${shop.shopNo}</td>
							<td><img style='max-width: 30px;max-height: 30px' alt="" src="${shop.shopImage}"></td>
							<td>${shop.shopPrice}</td>
							<td>${shop.shopStockNum}</td>
							<td>${shop.shopJsjtate}</td>
							<td>${shop.shopInfo}</td>
							<td><a class="btn btn-primary btn-sm" href="javascript:goupdateS(${shop.rowId});">修改</a> 
							<!-- data-xxx H5以后允许自定义元素的属性 --> 
							<a class="btn btn-primary btn-sm" href="javascript:;" data-rowId="${shop.rowId}" id="deleteS">删除</a></td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	</div>
</div>
<div class="row">
	<div class="col-sm-12 col-md-5">
		<div class="dataTables_info" id="dataTable_info" role="status" aria-live="polite">显示 ${pageData.beginIndex} 到 ${pageData.endIndex} 共 ${pageData.countIndex} 记录</div>
	</div>
	<div class="col-sm-12 col-md-7 float-right">
		<ul class="pagination float-right">
			<li class="page-item"><a class="page-link" href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a></li>
			<c:if test="">
			<c:forEach items="" var="page">
			<li class="page-item"><a class="page-link" href=""></a></li>	
			</c:forEach>
			</c:if>
			<li class="page-item"><a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</div>
</div>