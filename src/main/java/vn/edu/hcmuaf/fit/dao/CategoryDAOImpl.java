package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.IConnectionPool;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.helper.DbManager;
import vn.edu.hcmuaf.fit.model.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAOImpl implements CategoryDAO {
    private final IConnectionPool connectionPool;
    private Connection connection;

    public CategoryDAOImpl(IConnectionPool connectionPool) {
        this.connectionPool = connectionPool;
    }

    @Override
    public List<Category> getList() throws SQLException {
        List<Category> categories = new ArrayList<>();
        connection = connectionPool.getConnection();
        connectionPool.releaseConnection(connection);
        PreparedStatement statement = connection.prepareStatement(QUERY.CATEGORY.GET_LIST);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            String sku = rs.getString("sku");
            String name = rs.getString("name");
            boolean active = rs.getBoolean("active");
            Category category = new Category(sku, name, active);
            categories.add(category);
        }
        return categories;
    }

    @Override
    public Category get(String sku) throws SQLException {
        Category category = null;
        connection = connectionPool.getConnection();
        connectionPool.releaseConnection(connection);
        PreparedStatement statement = connection.prepareStatement(QUERY.CATEGORY.GET_CATEGORY_BY_SKU);
        statement.setString(1, sku);
        ResultSet rs = statement.executeQuery();
        if (!rs.isBeforeFirst() && rs.getRow() == 0) return null;
        if (rs.next()) {
            String name = rs.getString("name");
            boolean active = rs.getBoolean("active");
            category = new Category(sku, name, active);
        }
        return category;
    }

    @Override
    public void create(Category item) throws SQLException {
        connection = connectionPool.getConnection();
        connectionPool.releaseConnection(connection);
        PreparedStatement statement;
        statement = connection.prepareStatement(QUERY.CATEGORY.CREATE);
        statement.setString(1, item.getSku());
        statement.setString(2, item.getName());
        statement.executeUpdate();
    }
    
    @Override
    public void update(Category item) throws SQLException {
        connection = connectionPool.getConnection();
        connectionPool.releaseConnection(connection);
        PreparedStatement statement;
        statement = connection.prepareStatement(QUERY.CATEGORY.UPDATE);
        statement.setString(1, item.getName());
        statement.setString(2, item.getSku());
        statement.executeUpdate();
    }

    @Override
    public void delete(String sku) throws SQLException {
        connection = connectionPool.getConnection();
        connectionPool.releaseConnection(connection);
        PreparedStatement statement = connection.prepareStatement(QUERY.CATEGORY.DELETE);
        statement.setString(1, sku);
        statement.executeUpdate();
    }
    
    @Override
    public void changeActive(String sku) throws SQLException {
        connection = connectionPool.getConnection();
        connectionPool.releaseConnection(connection);
        PreparedStatement statement = connection.prepareStatement(QUERY.CATEGORY.CHANGE_ACTIVE);
        statement.setString(1, sku);
        statement.executeUpdate();
    }
}
