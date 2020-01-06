package com.situ.market.shop.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.situ.market.shop.domain.Shop;

public interface ShopService {
	Long saveShop(Shop shop,HttpServletRequest request);
	Long updateShop(Shop shop,HttpServletRequest request);
	Long deleteShop(Long rowId);
	List<Shop> findAllShop();
	Shop findShopById(Long rowId);
}
