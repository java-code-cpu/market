package com.situ.market.address.domain;

import org.apache.ibatis.type.Alias;

import com.situ.market.base.BaseClass;

@Alias("Address")
public class Address extends BaseClass {
	private static final long serialVersionUID = 1L;
	private String areaCode;   //地区编号
	private String areaName;  //地区名称
	private String parentCode;  //父级编号
	private String areaRunk;  //地区等级
	private String hasChild;  // 有下级单位的
	public String getAreaCode() {
		return areaCode;
	}
	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public String getParentCode() {
		return parentCode;
	}
	public void setParentCode(String parentCode) {
		this.parentCode = parentCode;
	}
	public String getAreaRunk() {
		return areaRunk;
	}
	public void setAreaRunk(String areaRunk) {
		this.areaRunk = areaRunk;
	}
	public String getHasChild() {
		return hasChild;
	}
	public void setHasChild(String hasChild) {
		this.hasChild = hasChild;
	}
	
	
}
