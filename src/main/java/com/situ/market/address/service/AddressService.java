package com.situ.market.address.service;

import java.util.List;

import com.situ.market.address.domain.Address;

public interface AddressService {
	Long saveAdd(Address address);
	List<Address> findByParentCode();
	List<Address> findByAreaCode(String areaCode);
	Long deleteAdd(Long rowId);
}
