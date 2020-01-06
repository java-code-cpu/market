package com.situ.market.shop.dao;

import java.util.List;


import org.springframework.stereotype.Repository;

import com.situ.market.shop.domain.Shop;

@Repository
public interface ShopDao {
	Long save(Shop shop);
	Long update(Shop shop);
	Long delete(Long rowId);
	List<Shop> findAll();
	Shop findById(Long rowId);
}
