package com.situ.market.order.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.situ.market.order.domain.Order;

@Repository
public interface OrderDao {
	Long save(Order order);
	Long update(Order order);
	Long delete(Long rowId);
	List<Order> findAll();
	Order findById(Long rowId);
}
