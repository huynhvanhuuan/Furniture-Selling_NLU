package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.model.Address;
import vn.edu.hcmuaf.fit.dto.address.District;
import vn.edu.hcmuaf.fit.dto.address.Province;
import vn.edu.hcmuaf.fit.dto.address.Ward;

import java.sql.SQLException;
import java.util.List;

public interface AddressDAO {
	List<Address> getListByTrademarkId(int trademarkId) throws SQLException;
	List<Address> getListByUserId(int userId) throws SQLException;
	List<Province> getProvinceList() throws SQLException;
	List<District> getDistrictListByProvinceId(int provinceId) throws SQLException;
	List<Ward> getWardListByDistrictId(int districtId) throws SQLException;
	Address getAddress(int id) throws SQLException;
	Province getProvince(int id) throws SQLException;
	District getDistrict(int id) throws SQLException;
	Ward getWard(int id) throws SQLException;
	void createTrademarkAddress(int trademarkId, Address address) throws SQLException;
	void createUserAddress(String userId, Address address) throws SQLException;
	void update(Address address) throws SQLException;
	void delete(int id) throws SQLException;
	boolean checkExist(String path) throws SQLException;
}
