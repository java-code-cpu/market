package com.situ.market.car;

import java.math.BigDecimal;

import com.situ.market.base.BaseClass;

public class carDomain extends BaseClass {
	private static final long serialVersionUID = 1L;
	private Long userId ;  //用户ID
	private Integer shopNo;  //商品编号
	private Integer carBuyNo;  //购买数量
	private BigDecimal shopMoney;  //商品总价
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Integer getShopNo() {
		return shopNo;
	}
	public void setShopNo(Integer shopNo) {
		this.shopNo = shopNo;
	}
	public Integer getBuyNo() {
		return carBuyNo;
	}
	public void setBuyNo(Integer buyNo) {
		this.carBuyNo = buyNo;
	}
	public BigDecimal getShopMoney() {
		return shopMoney;
	}
	public void setShopMoney(BigDecimal shopMoney) {
		this.shopMoney = shopMoney;
	}
	
	
}
