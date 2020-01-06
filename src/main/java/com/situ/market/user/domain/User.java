package com.situ.market.user.domain;

import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.situ.market.base.BaseClass;

@Alias("User")
public class User extends BaseClass  {
	private static final long serialVersionUID = 1L;
	private Long rowId;
	private Integer userType;  //用户类型
	private String userName;  //用户名称
	private String userCode;  //用户账号
	private String userPass;  //用户密码
	private String userImage;  //用户头像
	private Integer userPhone;  //用户手机
	private Integer userLock;  //是否锁定    0：锁定 ；1：未锁定
	private String lastLoginIp;  //最后登录IP
	private Date lastLoginData;  //最后登陆时间
	private CommonsMultipartFile userFile;
	public String getUserImage() {
		return userImage;
	}
	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}
	public CommonsMultipartFile getUserFile() {
		return userFile;
	}
	public void setUserFile(CommonsMultipartFile userFile) {
		this.userFile = userFile;
	}
	public Integer getUserType() {
		return userType;
	}
	public void setUserType(Integer userType) {
		this.userType = userType;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public Integer getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(Integer userPhone) {
		this.userPhone = userPhone;
	}
	public String getLastLoginIp() {
		return lastLoginIp;
	}
	public void setLastLoginIp(String lastLoginIp) {
		this.lastLoginIp = lastLoginIp;
	}
	public Date getLastLoginData() {
		return lastLoginData;
	}
	public void setLastLoginData(Date lastLoginData) {
		this.lastLoginData = lastLoginData;
	}
	public Integer getUserLock() {
		return userLock;
	}
	public void setUserLock(Integer userLock) {
		this.userLock = userLock;
	}
	
	
	
}
