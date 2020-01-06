package com.situ.market.admin.domain;

import org.apache.ibatis.type.Alias;

@Alias("Admin")
public class Admin {
	private String adminName;
	private String adminPass;
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminPass() {
		return adminPass;
	}
	public void setAdminPass(String adminPass) {
		this.adminPass = adminPass;
	}
	
}
