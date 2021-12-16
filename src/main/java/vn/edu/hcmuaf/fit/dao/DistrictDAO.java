package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.IConnectionPool;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.model.District;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DistrictDAO implements IGeneralDAO<District> {
    private final IConnectionPool connectionPool;
    private Connection connection;
    private ProvinceDAO provinceDAO;

    public DistrictDAO(IConnectionPool connectionPool) {
        this.connectionPool = connectionPool;
        provinceDAO = new ProvinceDAO(connectionPool);
    }

    @Override
    public List<District> getList() {
        return null;
    }

    public List<District> getListByProvinceId(int provinceId) throws SQLException {
        List<District> districts = new ArrayList<>();
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.DISTRICT.GET_LIST_BY_PROVINCE_ID);
        statement.setInt(1, provinceId);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            String prefix = rs.getString("prefix");
            District district = new District(id, name, prefix, provinceDAO.get(provinceId));
            districts.add(district);
        }
        connectionPool.releaseConnection(connection);
        return districts;
    }

    @Override
    public District get(int id) throws SQLException {
        District district = null;
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.DISTRICT.GET_ITEM_BY_ID);
        statement.setInt(1, id);
        ResultSet rs = statement.executeQuery();
        if (!rs.isBeforeFirst() && rs.getRow() == 0) {
            return null;
        }
        if (rs.next()) {
            String name = rs.getString("name");
            String prefix = rs.getString("prefix");
            int provinceId = rs.getInt("province_id");
            district = new District(id, name, prefix, provinceDAO.get(provinceId));
        }
        connectionPool.releaseConnection(connection);
        return district;
    }

    @Override
    public boolean save(District item) {
        return false;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }
}
