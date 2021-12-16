package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.IConnectionPool;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.dto.Address;
import vn.edu.hcmuaf.fit.model.Trademark;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TrademarkDAO implements IGeneralDAO<Trademark> {
    private final IConnectionPool connectionPool;
    private Connection connection;
    private AddressDAO addressDAO;

    public TrademarkDAO(IConnectionPool connectionPool) {
        this.connectionPool = connectionPool;
        addressDAO = new AddressDAO(connectionPool);
    }

    @Override
    public List<Trademark> getList() throws SQLException {
        List<Trademark> trademarks = new ArrayList<>();
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.TRADEMARK.GET_LIST);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            String website = rs.getString("website");
            List<Address> addresses = addressDAO.getListByTrademarkId(id);
            Trademark trademark = new Trademark(id, name, website, addresses);
            trademarks.add(trademark);
        }
        connectionPool.releaseConnection(connection);
        return trademarks;
    }

    @Override
    public Trademark get(int id) throws SQLException {
        Trademark trademark = null;
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.TRADEMARK.GET_ITEM_BY_ID);
        statement.setInt(1, id);
        ResultSet rs = statement.executeQuery();
        if (!rs.isBeforeFirst() && rs.getRow() == 0) return null;
        if (rs.next()) {
            String name = rs.getString("name");
            String website = rs.getString("website");
            List<Address> addresses = addressDAO.getListByTrademarkId(id);
            trademark = new Trademark(id, name, website, addresses);
        }
        connectionPool.releaseConnection(connection);
        return trademark;
    }

    @Override
    public boolean save(Trademark item) throws SQLException {
        connection = connectionPool.getConnection();
        PreparedStatement statement;
        int result;
        if (item.getId() == 0) {
            statement = connection.prepareStatement(QUERY.TRADEMARK.CREATE);
        } else {
            statement = connection.prepareStatement(QUERY.TRADEMARK.UPDATE);
            statement.setInt(3, item.getId());
        }
        statement.setString(1, item.getName());
        statement.setString(2, item.getWebsite());
        result = statement.executeUpdate();
        connectionPool.releaseConnection(connection);
        return result == 1;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.TRADEMARK.DELETE);
        statement.setInt(1, id);
        int result = statement.executeUpdate();
        connectionPool.releaseConnection(connection);
        return result == 1;
    }
}
