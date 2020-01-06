package com.situ.market.order.domain;

import java.math.BigDecimal;

import org.apache.ibatis.type.Alias;

import com.situ.market.base.BaseClass;

@Alias("Order")
public class Order extends BaseClass {
	private static final long serialVersionUID = 1L;
	private Long userRowId; //用户ID  关联用户表的ID
	private BigDecimal allMoney; // 总价格
	private String addressId; //收获地址ID
	private Integer orderState;  //订单状态  1:已付款  2：未付款 3：退单
	private Integer payMothed;  //支付方法   1：微信  2：支付宝  
	public Long getUserRowId() {
		return userRowId;
	}
	public void setUserRowId(Long userRowId) {
		this.userRowId = userRowId;
	}
	public BigDecimal getAllMoney() {
		return allMoney;
	}
	public void setAllMoney(BigDecimal allMoney) {
		this.allMoney = allMoney;
	}
	public String getAddressId() {
		return addressId;
	}
	public void setAddressId(String addressId) {
		this.addressId = addressId;
	}
	public Integer getOrderState() {
		return orderState;
	}
	public void setOderState(Integer orderState) {
		this.orderState = orderState;
	}
	public Integer getPayMothed() {
		return payMothed;
	}
	public void setPayMothed(Integer payMothed) {
		this.payMothed = payMothed;
	}
	
	
}
