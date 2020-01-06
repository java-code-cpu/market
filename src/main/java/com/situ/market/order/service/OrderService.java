package com.situ.market.order.service;

import java.util.List;

import com.situ.market.order.domain.Order;

public interface OrderService {
	List<Order> findOrder();
	Long saveOrder(Order order);
	Long deleteOrder(Long rowId);
	Long updateOrder(Order order);
	Order findOrderById(Long rowId);
}
