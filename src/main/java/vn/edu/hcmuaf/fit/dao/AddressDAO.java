package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.IConnectionPool;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.dto.Address;
import vn.edu.hcmuaf.fit.model.District;
import vn.edu.hcmuaf.fit.model.Ward;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AddressDAO implements IGeneralDAO<Address> {
    private final IConnectionPool connectionPool;
    private Connection connection;
    private DistrictDAO districtDAO;
    private WardDAO wardDAO;

    public AddressDAO(IConnectionPool connectionPool) {
        this.connectionPool = connectionPool;
        districtDAO = new DistrictDAO(connectionPool);
        wardDAO = new WardDAO(connectionPool);
    }

    @Override
    public List<Address> getList() {
        return null;
    }

    public List<Address> getListByTrademarkId(int trademarkId) throws SQLException {
        List<Address> addresses = new ArrayList<>();
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.ADDRESS.GET_LIST_BY_TRADEMARK_ID);
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
            if (wardId == 0) address = new Address(id, number, street, null, districtDAO.get(districtId), path);
            else {
                Ward ward = wardDAO.get(wardId);
                address = new Address(id, number, street, ward, ward.getDistrict(), path);
            }
            addresses.add(address);
        }
        connectionPool.releaseConnection(connection);
        return addresses;
    }

    @Override
    public Address get(int id) {
        return null;
    }

    public Address getItemByPath(String path) throws SQLException {
        Address address = null;
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.ADDRESS.GET_ITEM_BY_PATH);
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
                District district = districtDAO.get(districtId);
                address = new Address(id, number, street, null, district, path);
            } else {
                Ward ward = wardDAO.get(wardId);
                address = new Address(id, number, street, ward, ward.getDistrict(), path);
            }
        }
        connectionPool.releaseConnection(connection);
        return address;
    }

    @Override
    public boolean save(Address item) throws SQLException {
        connection = connectionPool.getConnection();
        PreparedStatement statement;
        if (item.getId() == 0) statement = connection.prepareStatement(QUERY.ADDRESS.CREATE);
        else {
            statement = connection.prepareStatement(QUERY.ADDRESS.UPDATE);
            statement.setInt(4, item.getId());
        }
        statement.setString(1, item.getNumber());
        statement.setString(2, item.getStreet());
        if (item.getWard() == null) statement.setInt(3, 0);
        else statement.setInt(3, item.getWard().getId());
        statement.setInt(4, item.getDistrict().getId());
        statement.setString(5, item.getPath());
        int result = statement.executeUpdate();
        connectionPool.releaseConnection(connection);
        return result == 1;
    }

    public boolean addAddress(int trademarkId, int addressId) throws SQLException {
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.TRADEMARK_ADDRESS.CREATE);
        statement.setInt(1, trademarkId);
        statement.setInt(2, addressId);
        int result = statement.executeUpdate();
        connectionPool.releaseConnection(connection);
        return result == 1;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.ADDRESS.DELETE);
        statement.setInt(1, id);
        int result = statement.executeUpdate();
        connectionPool.releaseConnection(connection);
        return result == 1;
    }
}
