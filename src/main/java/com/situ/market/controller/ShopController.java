package com.situ.market.controller;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.situ.market.shop.domain.Shop;
import com.situ.market.shop.service.ShopService;

@Controller
@RequestMapping("shop")
public class ShopController implements Serializable {
	private static final long serialVersionUID = 1L;
	private static final String GOODS_INDEX = "goods/shop_index";
	private static final String GOODS_LIST="goods/shop_list";
	
	@Autowired
	private ShopService shopServiceImple;
	
	@RequestMapping("/index")
	public ModelAndView goIndex(ModelAndView modelAndView) {
		modelAndView.setViewName(GOODS_INDEX);
		return modelAndView;
	}
	
	@RequestMapping("/list")
	public ModelAndView goList(ModelAndView modelAndView) {
		modelAndView.setViewName(GOODS_LIST);
		return modelAndView;
	}
	@ResponseBody
	@RequestMapping("/find")
	public ModelAndView find(ModelAndView modelAndView) {
		modelAndView.addObject("shoplist", shopServiceImple.findAllShop());
		modelAndView.setViewName(GOODS_LIST);
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping("/add")
	public Long saveShop(Shop shop , HttpServletRequest request) {
		System.out.println(shop);
		return shopServiceImple.saveShop(shop,request);
	}
	@ResponseBody
	@RequestMapping("/update")
	public Long shopUpdate(Shop shop,HttpServletRequest request) {
		System.out.println(shop);
		return shopServiceImple.updateShop(shop, request);
	}
	
	@ResponseBody
	@RequestMapping("goupdateS/{rowId}")
	public Shop goupdate(@PathVariable("rowId") Long rowId) {
		System.out.println(rowId);
		Shop shop = shopServiceImple.findShopById(rowId);
		System.out.println(shop);
		return shop;
	}
	@ResponseBody
	@RequestMapping("delete/{rowId}")
	public Long deleteShop(@PathVariable("rowId")Long rowId) {
		return shopServiceImple.deleteShop(rowId);
	}
	
}
