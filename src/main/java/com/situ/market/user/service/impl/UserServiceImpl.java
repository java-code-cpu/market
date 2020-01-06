package com.situ.market.user.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.situ.market.user.dao.UserDao;
import com.situ.market.user.domain.User;
import com.situ.market.user.service.UserService;
import com.situ.market.util.MD5Utils;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userdao;

	@Override
	public User getByNameAndPass(String userCode) {
		User user = userdao.get(userCode);
		return user;
	}

	@Override
	public Long userUpdate(HttpServletRequest request, User user) {
		HttpSession session = request.getSession();
		String userPass = MD5Utils.encode(user.getUserPass());
		user.setUserPass(userPass);
		User users = (User) session.getAttribute("user");
		users.setUserName(user.getUserName());
		users.setUserPhone(user.getUserPhone());
		String pass = user.getUserPass();
		System.out.println(pass);
		if (pass != null && pass != "" && !pass.isEmpty()) {
			users.setUserPass(user.getUserPass());
		}
		session.setAttribute("user", users);
		userdao.update(user);
		return user.getRowId();
	}

	@Override
	public User findById(Long rowId) {
		return userdao.find(rowId);
	}

	@Override
	public Long deleteUser(Long rowId) {
		userdao.supdate(rowId);
		return rowId;
	}

	@Override
	public List<User> findAllUser() {
		return userdao.findAll();
	}

	@Override
	public List<User> findByName(User user) {
		userdao.seleteByName(user);
		return null;
	}

	@Override
	public String register(User user, HttpServletRequest request) {
		System.out.println(user.getUserName());
		System.out.println(user.getUserImage());
		CommonsMultipartFile userFile = user.getUserFile();
		String name = userFile.getName();
		System.out.println("上传的文件的ParamName" + name);
		String originalFilename = userFile.getOriginalFilename();
		System.out.println("上传的文件名称=" + originalFilename);
		Long size = userFile.getSize();
		System.out.println("文件的大小=" + size);

		// 文件的后缀
		String suffix = originalFilename.substring(originalFilename.lastIndexOf("."));
		// 写出文件地址#此路径应该写到数据库中
		String filePath = "assets/uploads" + Calendar.getInstance().getTimeInMillis() + suffix;
		// 项目的根路径
		String realPath = request.getServletContext().getRealPath("/");
		// 要写出的文件
		File toFile = new File(realPath + filePath);
		try {
			userFile.transferTo(toFile);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		user.setActiveFlag(1);
		user.setUserLock(1);
		user.setUserType(1);
		user.setLastLoginIp("192.168.1.1");
		user.setLastLoginData(new Date());
		user.setUserPass(MD5Utils.encode(user.getUserPass()));
		user.setUserImage(filePath);
		userdao.save(user);

		return filePath;
	}

	@Override
	public Boolean CheckUserName(String userName) {
		User user = userdao.findByName(userName);
		Boolean bool = user != null ? false : true;
		return bool;
	}

}
