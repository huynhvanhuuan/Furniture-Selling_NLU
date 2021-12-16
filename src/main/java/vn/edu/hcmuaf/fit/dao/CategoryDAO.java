package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.IConnectionPool;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.model.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO implements IGeneralDAO<Category> {
    private final IConnectionPool connectionPool;
    private Connection connection;

    public CategoryDAO(IConnectionPool connectionPool) {
        this.connectionPool = connectionPool;
    }

    @Override
    public List<Category> getList() throws SQLException {
        List<Category> categories = new ArrayList<>();
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.CATEGORY.GET_LIST);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("id");
            String sku = rs.getString("sku");
            String name = rs.getString("name");
            Category category = new Category(id, sku, name);
            categories.add(category);
        }
        connectionPool.releaseConnection(connection);
        return categories;
    }

    @Override
    public Category get(int id) throws SQLException {
        Category category = null;
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.CATEGORY.GET_ITEM_BY_ID);
        statement.setInt(1, id);
        ResultSet rs = statement.executeQuery();
        if (!rs.isBeforeFirst() && rs.getRow() == 0) return null;
        if (rs.next()) {
            String sku = rs.getString("sku");
            String name = rs.getString("name");
            category = new Category(id, sku, name);
            category.setSku(sku);
            category.setName(name);
        }
        connectionPool.releaseConnection(connection);
        return category;
    }

    @Override
    public boolean save(Category item) throws SQLException {
        connection = connectionPool.getConnection();
        PreparedStatement statement;
        if (item.getId() == 0) {
            statement = connection.prepareStatement(QUERY.CATEGORY.CREATE);
        } else {
            statement = connection.prepareStatement(QUERY.CATEGORY.UPDATE);
            statement.setInt(3, item.getId());
        }
        statement.setString(1, item.getSku());
        statement.setString(2, item.getName());
        int result = statement.executeUpdate();
        connectionPool.releaseConnection(connection);
        return result == 1;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.CATEGORY.DELETE);
        statement.setInt(1, id);
        int result = statement.executeUpdate();
        connectionPool.releaseConnection(connection);
        return result == 1;
    }
}
