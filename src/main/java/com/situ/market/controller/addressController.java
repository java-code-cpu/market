package com.situ.market.controller;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.situ.market.address.domain.Address;
import com.situ.market.address.service.AddressService;

@Controller
@RequestMapping("address")
public class addressController implements Serializable {
	private static final long serialVersionUID = 1L;
	private static final String SHOP_ACCOUNT = "shop/my-account";
	
	@Autowired
	private AddressService addressservice;
	
	@RequestMapping("/find")
	public ModelAndView findAll(ModelAndView modelAndView){
		modelAndView.addObject("addresslist", addressservice.findByParentCode());
		List<Address> address = addressservice.findByParentCode();
		System.out.println(address);
		modelAndView.setViewName(SHOP_ACCOUNT);
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping("findAll/{areaCode}")
	public List<Address> findByAreaCode1(@PathVariable("areaCode")String areaCode,ModelAndView modelAndView) {
		return addressservice.findByAreaCode(areaCode);
	}
	
	@ResponseBody
	@RequestMapping("findByCode/{areaCode}")
	public List<Address> findByAreaCode(@PathVariable("areaCode")String areaCode,ModelAndView modelAndView) {
		return addressservice.findByAreaCode(areaCode);
	}
}
