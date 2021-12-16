package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.IConnectionPool;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.model.Province;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProvinceDAO implements IGeneralDAO<Province> {
    private final IConnectionPool connectionPool;
    private Connection connection;

    public ProvinceDAO(IConnectionPool connectionPool) {
        this.connectionPool = connectionPool;
    }

    @Override
    public List<Province> getList() throws SQLException {
        List<Province> provinces = new ArrayList<>();
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.PROVINCE.GET_LIST);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            String prefix = rs.getString("prefix");
            Province province = new Province(id, name, prefix);
            provinces.add(province);
        }
        connectionPool.releaseConnection(connection);
        return provinces;
    }

    @Override
    public Province get(int id) throws SQLException {
        Province province = null;
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.PROVINCE.GET_ITEM_BY_ID);
        statement.setInt(1, id);
        ResultSet rs = statement.executeQuery();
        if (!rs.isBeforeFirst() && rs.getRow() == 0) return null;
        if (rs.next()) {
            String name = rs.getString("name");
            String prefix = rs.getString("prefix");
            province = new Province(id, name, prefix);
            province.setName(name);
            province.setPrefix(prefix);
        }
        connectionPool.releaseConnection(connection);
        return province;
    }

    @Override
    public boolean save(Province item) {
        return false;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }
}
