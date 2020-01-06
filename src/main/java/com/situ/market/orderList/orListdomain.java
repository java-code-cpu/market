package com.situ.market.orderList;

import com.situ.market.base.BaseClass;

public class orListdomain extends BaseClass {
	private static final long serialVersionUID = 1L;
	private Long orderId;  // 订单编号  关联订单的编号
	private Long listShopId; //商品编号 
	private Integer listBuyNo;  //购买数量
	private Integer allMoney; //商品总价
	public Long getOrderId() {
		return orderId;
	}
	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}
	public Long getListShopId() {
		return listShopId;
	}
	public void setListShopId(Long listShopId) {
		this.listShopId = listShopId;
	}
	public Integer getListBuyNo() {
		return listBuyNo;
	}
	public void setListBuyNo(Integer listBuyNo) {
		this.listBuyNo = listBuyNo;
	}
	public Integer getAllMoney() {
		return allMoney;
	}
	public void setAllMoney(Integer allMoney) {
		this.allMoney = allMoney;
	}
	
	
}
