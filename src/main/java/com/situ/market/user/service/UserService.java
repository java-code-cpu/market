package com.situ.market.user.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.situ.market.user.domain.User;

public interface UserService {
	Long userUpdate(HttpServletRequest request , User user);
	User getByNameAndPass(String userCode);
	User findById(Long rowId);
	List<User> findAllUser();
	Long deleteUser(Long rowId);
	List<User> findByName(User user);
	String register(User user, HttpServletRequest request);
	Boolean CheckUserName(String userName);
}
