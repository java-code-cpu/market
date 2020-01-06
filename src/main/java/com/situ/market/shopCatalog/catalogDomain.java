package com.situ.market.shopCatalog;

import com.situ.market.base.BaseClass;

public class catalogDomain extends BaseClass {
	private static final long serialVersionUID = 1L;
	private Long fatherId; //父级目录  关联上级目录的ID
	private String catalogName; // 目录名称
	public Long getFatherId() {
		return fatherId;
	}
	public void setFatherId(Long fatherId) {
		this.fatherId = fatherId;
	}
	public String getCatalogName() {
		return catalogName;
	}
	public void setCatalogName(String catalogName) {
		this.catalogName = catalogName;
	}
	
}
