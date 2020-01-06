package com.situ.market.shop.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.situ.market.shop.dao.ShopDao;
import com.situ.market.shop.domain.Shop;
import com.situ.market.shop.service.ShopService;

@Service
public class ShopServiceImpl implements ShopService {
	
	@Autowired
	private ShopDao shopdao;

	@Override
	public Long saveShop(Shop shop,HttpServletRequest request) {
		CommonsMultipartFile shopFile = shop.getShopFile();
		String originalFilename = shopFile.getOriginalFilename();
		String suffix = originalFilename.substring(originalFilename.lastIndexOf("."));
		//此路径写入数据库
		String filePath = "assets/uploads" +Calendar.getInstance().getTimeInMillis()+suffix;
		String realPath = request.getServletContext().getRealPath("/");
		File toFile = new File(realPath + filePath);
		try {
			shopFile.transferTo(toFile);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}finally {
		
		}
		shop.setActiveFlag(1);
		shop.setShopImage(filePath);
		
		shopdao.save(shop);
		return null;
	}

	@Override
	public Long updateShop(Shop shop,HttpServletRequest request) {
		CommonsMultipartFile shopFile = shop.getShopFile();
		String originalFileName = shopFile.getOriginalFilename();
		String suffix = originalFileName.substring(originalFileName.lastIndexOf("."));
		
		String filePath = "assets/uploads"+Calendar.getInstance().getTimeInMillis()+suffix;
		String realFile = request.getServletContext().getRealPath("/");
		File toFile = new File(realFile+filePath);
		try {
			shopFile.transferTo(toFile);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		shop.setShopImage(filePath);
		shopdao.update(shop);
		return null;
	}

	@Override
	public Long deleteShop(Long rowId) {
		Long result = shopdao.delete(rowId);
		return result;
	}

	@Override
	public List<Shop> findAllShop() {
		List<Shop> shop = shopdao.findAll();
		System.out.println(shop);
		return shop;
	}

	@Override
	public Shop findShopById(Long rowId) {
		Shop shop = shopdao.findById(rowId);
		return shop;
	}

	
}
