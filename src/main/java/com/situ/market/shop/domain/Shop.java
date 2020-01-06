package com.situ.market.shop.domain;

import java.io.File;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.situ.market.base.BaseClass;

@Alias("Shop")
public class Shop extends BaseClass{
	private static final long serialVersionUID = 1L;
	private Long cataId;  //目录ID
	private String shopName; //商品名称
	private Long shopNo; //商品编号
	private String shopImage; //商品图片
	private float shopPrice; //商品价格
	private Integer shopStockNum; //库存数量
	private Integer shopJsjtate;  //上下架状态  1:上架; 2：下架
	private String shopInfo;  //商品介绍
	
	private CommonsMultipartFile shopFile ;

	public Long getCataId() {
		return cataId;
	}

	public void setCataId(Long cataId) {
		this.cataId = cataId;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public Long getShopNo() {
		return shopNo;
	}

	public void setShopNo(Long shopNo) {
		this.shopNo = shopNo;
	}

	public String getShopImage() {
		return shopImage;
	}

	public void setShopImage(String shopImage) {
		this.shopImage = shopImage;
	}

	public float getShopPrice() {
		return shopPrice;
	}

	public void setShopPrice(float shopPrice) {
		this.shopPrice = shopPrice;
	}

	public Integer getShopStockNum() {
		return shopStockNum;
	}

	public void setShopStockNum(Integer shopStockNum) {
		this.shopStockNum = shopStockNum;
	}

	public Integer getShopJsjtate() {
		return shopJsjtate;
	}

	public void setShopJsjtate(Integer shopJsjtate) {
		this.shopJsjtate = shopJsjtate;
	}

	public String getShopInfo() {
		return shopInfo;
	}

	public void setShopInfo(String shopInfo) {
		this.shopInfo = shopInfo;
	}

	public CommonsMultipartFile getShopFile() {
		return shopFile;
	}

	public void setShopFile(CommonsMultipartFile shopFile) {
		this.shopFile = shopFile;
	}

	@Override
	public String toString() {
		return "Shop [cataId=" + cataId + ", shopName=" + shopName + ", shopNo=" + shopNo + ", shopImage=" + shopImage
				+ ", shopPrice=" + shopPrice + ", shopStockNum=" + shopStockNum + ", shopJsjtate=" + shopJsjtate
				+ ", shopInfo=" + shopInfo + ", shopFile=" + shopFile + "]";
	}
	



	
}
