package com.situ.market.base;

import java.io.Serializable;

import javax.xml.crypto.Data;

public class BaseClass implements Serializable {
	private static final long serialVersionUID = 1L;
	private Long rowId; //主键
	private Integer activeFlag; //数据是否有效 1：有效；0：无效
	private String createBy;  //创建人
	private Data createData; //创建时间
	private String updateBy;  //修改人
	private Data updateData;  //修改时间
	public Long getRowId() {
		return rowId;
	}
	public void setRowId(Long rowId) {
		this.rowId = rowId;
	}
	public String getCreateBy() {
		return createBy;
	}
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}
	public Data getCreateData() {
		return createData;
	}
	public void setCreateData(Data createData) {
		this.createData = createData;
	}
	public String getUpdateBy() {
		return updateBy;
	}
	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}
	public Data getUpdateData() {
		return updateData;
	}
	public void setUpdateData(Data updateData) {
		this.updateData = updateData;
	}
	public Integer getActiveFlag() {
		return activeFlag;
	}
	public void setActiveFlag(Integer activeFlag) {
		this.activeFlag = activeFlag;
	}
	
	
	
}
