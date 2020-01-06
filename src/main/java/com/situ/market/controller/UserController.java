package com.situ.market.controller;

import java.io.IOException;
import java.io.Serializable;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.situ.market.address.domain.Address;
import com.situ.market.address.service.AddressService;
import com.situ.market.user.domain.User;
import com.situ.market.user.service.UserService;
import com.situ.market.util.MD5Utils;;

@Controller
public class UserController implements Serializable {
	private static final long serialVersionUID = 1L;
	private static final String SHOP_INDEX = "shop/index";
	private static final String SHOP_SHOP = "shop/shop";
	private static final String SHOP_LOGIN = "shop/login-register";
	private static final String SHOP_ABOUT = "shop/about-us";
	private static final String SHOP_BLOG = "shop/blog-list-left-sidebar";
	private static final String SHOP_CART = "shop/cart";
	private static final String SHOP_COMPARE = "shop/compare";
	private static final String SHOP_CONTACT = "shop/contact-us";
	private static final String SHOP_ACCOUNT = "shop/my-account";
	private static final String SHOP_SHOP_GRID3 = "shop/shop-grid-full-3-col";
	private static final String SHOP_SHOP_GRID4 = "shop/shop-grid-full-4-col";
	private static final String SHOP_SHOP_LIST = "shop/shop-list-full-width";
	private static final String SHOP_WISH = "shop/wishlist";
	private static final String SHOP_PRODUCT = "shop/product-details";
	private static final String SHOP_CHECKOUT = "shop/checkout";

	@Autowired
	private UserService userservice;
	private AddressService addressservice;

	@RequestMapping(path = { "/", "/index" })
	public ModelAndView goIndex(ModelAndView modelAndView) {
		modelAndView.setViewName(SHOP_INDEX);
		return modelAndView;
	}

	@ResponseBody
	@RequestMapping("/shop")
	public ModelAndView goshop(ModelAndView modelAndView) {
		modelAndView.setViewName(SHOP_SHOP);
		return modelAndView;
	}

	@ResponseBody
	@RequestMapping("/login-register")
	public ModelAndView goLogin(ModelAndView modelAndView) {
		modelAndView.setViewName(SHOP_LOGIN);
		return modelAndView;
	}

	@ResponseBody
	@RequestMapping("/about")
	public ModelAndView goAboutUs(ModelAndView modelAndView) {
		modelAndView.setViewName(SHOP_ABOUT);
		return modelAndView;
	}

	@ResponseBody
	@RequestMapping("/blog")
	public ModelAndView goBlogList(ModelAndView modelAndView) {
		modelAndView.setViewName(SHOP_BLOG);
		return modelAndView;
	}

	@ResponseBody
	@RequestMapping("/cart")
	public ModelAndView goCart(ModelAndView modelAndView) {
		modelAndView.setViewName(SHOP_CART);
		return modelAndView;
	}

	@ResponseBody
	@RequestMapping("/compare")
	public ModelAndView goCompare(ModelAndView modelAndView) {
		modelAndView.setViewName(SHOP_COMPARE);
		return modelAndView;
	}

	@ResponseBody
	@RequestMapping("/account")
	public ModelAndView goaccount(ModelAndView modelAndView) {
		modelAndView.setViewName(SHOP_ACCOUNT);
		return modelAndView;
	}

	@ResponseBody
	@RequestMapping("/contact")
	public ModelAndView gocontact(ModelAndView modelAndView) {
		modelAndView.setViewName(SHOP_CONTACT);
		return modelAndView;
	}

	@ResponseBody
	@RequestMapping("/shop-grid-full-3-col")
	public ModelAndView goGrid3(ModelAndView modelAndView) {
		modelAndView.setViewName(SHOP_SHOP_GRID3);
		return modelAndView;
	}

	@ResponseBody
	@RequestMapping("/shop-grid-full-4-col")
	public ModelAndView goGrid4(ModelAndView modelAndView) {
		modelAndView.setViewName(SHOP_CONTACT);
		return modelAndView;
	}

	@ResponseBody
	@RequestMapping("shop-list-full-width")
	public ModelAndView goList(ModelAndView modelAndView) {
		modelAndView.setViewName(SHOP_SHOP_LIST);
		return modelAndView;
	}

	@ResponseBody
	@RequestMapping("wishlist")
	public ModelAndView goWishList(ModelAndView modelAndView) {
		modelAndView.setViewName(SHOP_WISH);
		return modelAndView;
	}

	@ResponseBody
	@RequestMapping("product")
	public ModelAndView goProduct(ModelAndView modelAndView) {
		modelAndView.setViewName(SHOP_PRODUCT);
		return modelAndView;
	}

	@ResponseBody
	@RequestMapping("checkout")
	public ModelAndView goCheckout(ModelAndView modelAndView) {
		modelAndView.setViewName(SHOP_CHECKOUT);
		return modelAndView;
	}

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping("register") public Long doRegister(User user) { //注册 return
	 * userservice.saveUser(user); }
	 */
	@ResponseBody
	@RequestMapping("login")
	public Integer doLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Integer result = 0;
		String userCode = request.getParameter("userCode");
		String userPass = request.getParameter("userPass");
		User user = userservice.getByNameAndPass(userCode);
		if (user != null && user.getUserPass().equals(MD5Utils.encode(userPass))) {
			result = 1;
			request.getSession().setAttribute("user", user);
			response.sendRedirect(SHOP_INDEX);
			return result;
		}
		return result;

	}

	@ResponseBody
	@RequestMapping("goupdate/{rowId}")
	public User find(@PathVariable("rowId") Long rowId) {
		User user = userservice.findById(rowId);
		return user;

	}

	@ResponseBody
	@RequestMapping("update")
	public Long doUpdate(HttpServletRequest request, User user) {

		return this.userservice.userUpdate(request, user);
	}

	@ResponseBody
	@RequestMapping("logout")
	public Integer logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		return 1;
	}

	@ResponseBody
	@RequestMapping("register")
	public String upload(User user, HttpServletRequest request) {
		System.out.println(user);
		return userservice.register(user, request);
	}

}
