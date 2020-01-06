package com.situ.market.order.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.market.order.dao.OrderDao;
import com.situ.market.order.domain.Order;
import com.situ.market.order.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDao orderdao;

	@Override
	public List<Order> findOrder() {
		return orderdao.findAll();
	}

	@Override
	public Long saveOrder(Order order) {
		return orderdao.save(order);
	}

	@Override
	public Long deleteOrder(Long rowId) {
		return orderdao.delete(rowId);
	}

	@Override
	public Long updateOrder(Order order) {
		return orderdao.update(order);
	}

	@Override
	public Order findOrderById(Long rowId) {
		return orderdao.findById(rowId);
	}

}
