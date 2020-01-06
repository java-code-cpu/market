package com.situ.market.address.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.market.address.dao.AddressDao;
import com.situ.market.address.domain.Address;
import com.situ.market.address.service.AddressService;

@Service
public class AddressServiceImpl implements AddressService {
	@Autowired
	private AddressDao addressdao;

	@Override
	public Long saveAdd(Address address) {
		addressdao.save(address);
		return null;
	}

	@Override
	public List<Address> findByParentCode() {
		return addressdao.findByParentCode();
	}

	@Override
	public List<Address> findByAreaCode(String areaCode) {
		return addressdao.findByCode(areaCode);
	}

	@Override
	public Long deleteAdd(Long rowId) {
		addressdao.delete(rowId);
		return null;
	}

}
