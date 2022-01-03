package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.IConnectionPool;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.model.Address;
import vn.edu.hcmuaf.fit.dto.address.District;
import vn.edu.hcmuaf.fit.dto.address.Province;
import vn.edu.hcmuaf.fit.dto.address.Ward;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AddressDAOImpl implements AddressDAO {
    private final IConnectionPool connectionPool;
    private Connection connection;

    public AddressDAOImpl(IConnectionPool connectionPool) {
        this.connectionPool = connectionPool;
    }

    @Override
    public List<Address> getListByTrademarkId(int trademarkId) throws SQLException {
        List<Address> addresses = new ArrayList<>();
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.ADDRESS.GET_ADDRESS_LIST_BY_TRADEMARK_ID);
        statement.setInt(1, trademarkId);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("id");
            String number = rs.getString("number");
            String street = rs.getString("street");
            int wardId = rs.getInt("ward_id");
            int districtId = rs.getInt("district_id");
            String path = rs.getString("path");
            Address address;
            if (wardId == 0) address = new Address(id, number, street, null, getDistrict(districtId), path);
            else {
                Ward ward = getWard(wardId);
                address = new Address(id, number, street, ward, ward.getDistrict(), path);
            }
            addresses.add(address);
        }
        connectionPool.releaseConnection(connection);
        return addresses;
    }
    
    @Override
    public List<Address> getListByUserId(int userId) throws SQLException {
        List<Address> addresses = new ArrayList<>();
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.ADDRESS.GET_ADDRESS_LIST_BY_USER_ID);
        statement.setInt(1, userId);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("id");
            String number = rs.getString("number");
            String street = rs.getString("street");
            int wardId = rs.getInt("ward_id");
            int districtId = rs.getInt("district_id");
            String path = rs.getString("path");
            Address address;
            if (wardId == 0) address = new Address(id, number, street, null, getDistrict(districtId), path);
            else {
                Ward ward = getWard(wardId);
                address = new Address(id, number, street, ward, ward.getDistrict(), path);
            }
            addresses.add(address);
        }
        connectionPool.releaseConnection(connection);
        return addresses;
    }
    
    @Override
    public List<Province> getProvinceList() throws SQLException {
        List<Province> provinces = new ArrayList<>();
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.ADDRESS.GET_PROVINCE_LIST);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            String prefix = rs.getString("prefix");
            List<District> districts = getDistrictListByProvinceId(id);
            Province province = new Province(id, name, prefix, districts);
            provinces.add(province);
        }
        connectionPool.releaseConnection(connection);
        return provinces;
    }
    
    @Override
    public List<District> getDistrictListByProvinceId(int provinceId) throws SQLException {
        List<District> districts = new ArrayList<>();
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.ADDRESS.GET_DISTRICT_LIST_BY_PROVINCE_ID);
        statement.setInt(1, provinceId);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            String prefix = rs.getString("prefix");
            Province province = getProvince(provinceId);
            List<Ward> wards = getWardListByDistrictId(id);
            District district = new District(id, name, prefix, province, wards);
            districts.add(district);
        }
        connectionPool.releaseConnection(connection);
        return districts;
    }
    
    @Override
    public List<Ward> getWardListByDistrictId(int districtId) throws SQLException {
        List<Ward> wards = new ArrayList<>();
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.ADDRESS.GET_WARD_LIST_BY_DISTRICT_ID);
        statement.setInt(1, districtId);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            String prefix = rs.getString("prefix");
            District district = getDistrict(districtId);
            Ward ward = new Ward(id, name, prefix, district);
            wards.add(ward);
        }
        connectionPool.releaseConnection(connection);
        return wards;
    }
    
    @Override
    public Address getAddress(int id) throws SQLException {
        Address address = null;
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.ADDRESS.GET_ADDRESS_BY_ID);
        statement.setInt(1, id);
        ResultSet rs = statement.executeQuery();
        if (!rs.isBeforeFirst() && rs.getRow() == 0) return null;
        if (rs.next()) {
            String number = rs.getString("number");
            String street = rs.getString("street");
            int districtId = rs.getInt("district_id");
            String path = rs.getString("path");
            if (rs.getString("ward_id") == null) {
                District district = getDistrict(districtId);
                address = new Address(id, number, street, null, district, path);
            } else {
                int wardId = rs.getInt("ward_id");
                Ward ward = getWard(wardId);
                address = new Address(id, number, street, ward, ward.getDistrict(), path);
            }
        }
        connectionPool.releaseConnection(connection);
        return address;
    }
    
    @Override
    public Province getProvince(int id) throws SQLException {
        Province province = null;
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.ADDRESS.GET_PROVINCE);
        statement.setInt(1, id);
        ResultSet rs = statement.executeQuery();
        if (!rs.isBeforeFirst() && rs.getRow() == 0) return null;
        if (rs.next()) {
            String name = rs.getString("name");
            String prefix = rs.getString("prefix");
            List<District> districts = getDistrictListByProvinceId(id);
            province = new Province(id, name, prefix, districts);
            province.setName(name);
            province.setPrefix(prefix);
        }
        connectionPool.releaseConnection(connection);
        return province;
    }
    
    @Override
    public District getDistrict(int id) throws SQLException {
        District district = null;
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.ADDRESS.GET_DISTRICT);
        statement.setInt(1, id);
        ResultSet rs = statement.executeQuery();
        if (!rs.isBeforeFirst() && rs.getRow() == 0) {
            return null;
        }
        if (rs.next()) {
            String name = rs.getString("name");
            String prefix = rs.getString("prefix");
            int provinceId = rs.getInt("province_id");
            Province province = getProvince(provinceId);
            List<Ward> wards = getWardListByDistrictId(id);
            district = new District(id, name, prefix, province, wards);
        }
        connectionPool.releaseConnection(connection);
        return district;
    }
    
    @Override
    public Ward getWard(int id) throws SQLException {
        Ward ward = null;
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.ADDRESS.GET_WARD);
        statement.setInt(1, id);
        ResultSet rs = statement.executeQuery();
        if (!rs.isBeforeFirst() && rs.getRow() == 0) return null;
        if (rs.next()) {
            String name = rs.getString("name");
            String prefix = rs.getString("prefix");
            int districtId = rs.getInt("district_id");
            District district = getDistrict(districtId);
            ward = new Ward(id, name, prefix, district);
        }
        connectionPool.releaseConnection(connection);
        return ward;
    }
    
    @Override
    public void createTrademarkAddress(int trademarkId, Address address) throws SQLException {
        create(address);
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.TRADEMARK_ADDRESS.CREATE);
        statement.setInt(1, trademarkId);
        statement.setInt(2, getLatestId());
        statement.executeUpdate();
        connectionPool.releaseConnection(connection);
    }
    
    @Override
    public void createUserAddress(String userId, Address address) throws SQLException {
        create(address);
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.USER_ADDRESS.CREATE);
        statement.setString(1, userId);
        statement.setInt(2, getLatestId());
        statement.executeUpdate();
        connectionPool.releaseConnection(connection);
    }
    
    @Override
    public void update(Address address) throws SQLException {
        connection = connectionPool.getConnection();
        PreparedStatement statement;
        statement = connection.prepareStatement(QUERY.ADDRESS.UPDATE);
        statement.setString(1, address.getNumber());
        statement.setString(2, address.getStreet());
        statement.setInt(3, address.getWard() == null ? 0 : address.getWard().getId());
        statement.setInt(4, address.getDistrict().getId());
        statement.setString(5, address.getPath());
        statement.setInt(6, address.getId());
        statement.executeUpdate();
        connectionPool.releaseConnection(connection);
    }
    
    @Override
    public void delete(int id) throws SQLException {
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.ADDRESS.DELETE);
        statement.setInt(1, id);
        statement.executeUpdate();
        connectionPool.releaseConnection(connection);
    }
    
    private void create(Address address) throws SQLException {
        connection = connectionPool.getConnection();
        PreparedStatement statement;
        statement = connection.prepareStatement(QUERY.ADDRESS.CREATE);
        statement.setString(1, address.getNumber());
        statement.setString(2, address.getStreet());
        statement.setInt(3, address.getWard() == null ? 0 : address.getWard().getId());
        statement.setInt(4, address.getDistrict().getId());
        statement.setString(5, address.getPath());
        statement.executeUpdate();
        connectionPool.releaseConnection(connection);
    }
    
    private int getLatestId() throws SQLException {
        int id = 0;
        connection = connectionPool.getConnection();
        ResultSet rs = connection.prepareStatement(QUERY.ADDRESS.GET_LAST_ID).executeQuery();
        if (rs.next()) {
            id = rs.getInt("id");
        }
        connectionPool.releaseConnection(connection);
        return id;
    }

    @Override
    public Address getAddress(String path) throws SQLException {
        Address address = null;
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.ADDRESS.GET_ADDRESS_BY_PATH);
        statement.setString(1, path);
        ResultSet rs = statement.executeQuery();
        if (!rs.isBeforeFirst() && rs.getRow() == 0) return null;
        if (rs.next()) {
            int id = rs.getInt("id");
            String number = rs.getString("number");
            String street = rs.getString("street");
            int wardId = rs.getInt("ward_id");
            int districtId = rs.getInt("district_id");
            if (wardId == 0) {
                District district = getDistrict(districtId);
                address = new Address(id, number, street, null, district, path);
            } else {
                Ward ward = getWard(wardId);
                address = new Address(id, number, street, ward, ward.getDistrict(), path);
            }
        }
        connectionPool.releaseConnection(connection);
        return address;
    }
}