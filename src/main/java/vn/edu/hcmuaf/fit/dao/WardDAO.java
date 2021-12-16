package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.IConnectionPool;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.model.Ward;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class WardDAO implements IGeneralDAO<Ward> {
    private final IConnectionPool connectionPool;
    private Connection connection;
    private DistrictDAO districtDAO;

    public WardDAO(IConnectionPool connectionPool) {
        this.connectionPool = connectionPool;
        districtDAO = new DistrictDAO(connectionPool);
    }

    @Override
    public List<Ward> getList() {
        return null;
    }

    public List<Ward> getListByDistrictId(int districtId) throws SQLException {
        List<Ward> wards = new ArrayList<>();
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.WARD.GET_LIST_BY_DISTRICT_ID);
        statement.setInt(1, districtId);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            String prefix = rs.getString("prefix");
            Ward ward = new Ward(id, name, prefix, districtDAO.get(districtId));
            wards.add(ward);
        }
        connectionPool.releaseConnection(connection);
        return wards;
    }

    @Override
    public Ward get(int id) throws SQLException {
        Ward ward = null;
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.WARD.GET_ITEM_BY_ID);
        statement.setInt(1, id);
        ResultSet rs = statement.executeQuery();
        if (!rs.isBeforeFirst() && rs.getRow() == 0) return null;
        if (rs.next()) {
            String name = rs.getString("name");
            String prefix = rs.getString("prefix");
            int districtId = rs.getInt("district_id");
            ward = new Ward(id, name, prefix, districtDAO.get(districtId));
        }
        connectionPool.releaseConnection(connection);
        return ward;
    }

    @Override
    public boolean save(Ward item) {
        return false;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }
}
