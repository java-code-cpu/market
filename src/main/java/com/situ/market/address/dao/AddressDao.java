package com.situ.market.address.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.situ.market.address.domain.Address;

@Repository
public interface AddressDao {
	Long save(Address address);
	Long update(Address address);
	Long delete(Long rowId);
	List<Address> find();
	List<Address> findByParentCode();
	List<Address> findByCode(String areaCode);
}
