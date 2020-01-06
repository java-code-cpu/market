/**
 * 
 */
package com.situ.market.controller;

import java.io.Serializable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.situ.market.order.domain.Order;
import com.situ.market.order.service.OrderService;
/**
 * @author xtx
 *
 */
@Controller
@RequestMapping("order")
public class orderController implements Serializable {
	private static final long serialVersionUID = 1L;
	private static final String ORDER_INDEX = "order/order_index";
	private static final String ORDER_LIST = "order/order_list";
	
	@Autowired
	private OrderService orderservice;
	
	@RequestMapping("/index")
	public ModelAndView goIndex(ModelAndView modelAndView) {
		modelAndView.setViewName(ORDER_INDEX);
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping("/add")
	public Long saveOrder(Order order) {
		return orderservice.saveOrder(order);
	}
	
	@ResponseBody
	@RequestMapping("/update")
	public Long updateOrder(Order order) {
		return orderservice.updateOrder(order);
	}
	
	@ResponseBody
	@RequestMapping("/goupdate/{rowId}")
	public Order goupdate(@PathVariable("rowId") Long rowId) {
		return orderservice.findOrderById(rowId);
	}
	
	@ResponseBody
	@RequestMapping("/delete/{rowId}")
	public Long deleteOrder(@PathVariable("rowId")Long rowId) {
		return orderservice.deleteOrder(rowId);
	}
	
	@ResponseBody
	@RequestMapping("/find")
	public ModelAndView findAllOrder(ModelAndView modelAndView) {
		modelAndView.addObject("orderlist", orderservice.findOrder());
		modelAndView.setViewName(ORDER_LIST);
		return modelAndView;
	}
}
