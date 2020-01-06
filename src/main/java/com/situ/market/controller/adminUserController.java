package com.situ.market.controller;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.situ.market.user.domain.User;
import com.situ.market.user.service.UserService;

@Controller
@RequestMapping("/user")
public class adminUserController implements Serializable {
	private static final long serialVersionUID = 1L;
	private static final String PAGE_INDEX_ROLE = "role/role_index";
	private static final String PAGE_LIST_ROLE = "role/role_list";
	private static final String PAGE_INDEX = "role/adminIndex";
	private static final String SHOP_LIST = "role/jtree_table";
	private static final String ADMIN_LOGIN = "role/Login";
	@Autowired
	private UserService userService;

	/**
	 * @ 完成新增
	 * 
	 * @param role
	 * @return
	 */
	/*
	 * 如果页面提交过来的数据是个数组，可以使用数组接受 String[] userLike。
	 * 
	 * 如果想使用集合去接受数据，则需要将集合定义到domain类中。
	 * 
	 * 
	 */

	@ResponseBody
	@RequestMapping("/add")
	public String doAddRole(User user, HttpServletRequest request) { //
		return userService.register(user, request);
	}

	/**
	 * @进首页
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/index")
	public ModelAndView goRoleIndex(ModelAndView modelAndView) {
		modelAndView.setViewName(PAGE_INDEX_ROLE);
		return modelAndView;
	}

	@RequestMapping("/admin")
	public ModelAndView goAdminIndex(ModelAndView modelAndView) {
		modelAndView.setViewName(PAGE_INDEX);
		return modelAndView;
	}

	@RequestMapping("/jtree")
	public ModelAndView goshopList(ModelAndView modelAndView) {
		modelAndView.setViewName(SHOP_LIST);
		return modelAndView;
	}

	/**
	 * @查询所有的记录
	 * @param pageNo       分页的页号
	 * @param modelAndView
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/find")
	public ModelAndView findAllRole(ModelAndView modelAndView) {
		modelAndView.addObject("userList", userService.findAllUser());
		modelAndView.setViewName(PAGE_LIST_ROLE);
		return modelAndView;
	}

	// role/goupdate?rowId=1
	// role/goupdate/1
	@ResponseBody
	@RequestMapping("/goupdate/{rowId}")
	public User goUpdate(@PathVariable("rowId") Long rowId) {
		return this.userService.findById(rowId);
	}

	@ResponseBody
	@RequestMapping("/doupdate")
	public Long doUpdateRolwr(HttpServletRequest request, User role) {
		return this.userService.userUpdate(request, role);
	}

	@ResponseBody
	@RequestMapping("/dodelete/{rowId}")
	public Long doDelete(@PathVariable("rowId") Long rowId) {
		System.out.println(rowId);
		return this.userService.deleteUser(rowId);
	}

	@ResponseBody
	@RequestMapping("/findName")
	public ModelAndView findByName(ModelAndView modelAndView, User user) {
		modelAndView.addObject("userList", userService.findByName(user));
		modelAndView.setViewName(PAGE_LIST_ROLE);
		return modelAndView;
	}

	// fieldId=roleName&fieldValue=admin&_=1576483347425

	@ResponseBody

	@RequestMapping("/checkUserName")
	public String checkUserName(String fieldId, String fieldValue) { // 通过服务层判断此名称是否可以使用。true：可以使用，false：不可以使用
		System.out.println(fieldValue);
		Boolean bool = userService.CheckUserName(fieldValue);
		// 通过使用ObjectMapper开始封装需要返回的校验结果
		ObjectMapper objectMapper = new ObjectMapper();
		List<Object> list = new ArrayList<Object>();
		list.add(fieldId);
		list.add(bool);
		try { // 将封装好的校验结果转换成json格式的字符串并响应回去
			return objectMapper.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return null;
	}


}
