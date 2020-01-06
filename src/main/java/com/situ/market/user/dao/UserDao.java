package com.situ.market.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.situ.market.user.domain.User;

@Repository
public interface UserDao {
	Long save(User user);
	Long update(User user);
	User get(@Param("userCode")String userCode);
	User find(Long rowId);
	Long supdate(Long rowId);
	List<User> seleteByName(User user);
	List<User> findAll();
	User findByName(String UserName);
}
