package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.IConnectionPool;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.model.Category;
import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.model.Trademark;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ProductDAO implements IGeneralDAO<Product> {
    private final IConnectionPool connectionPool;
    private Connection connection;
    private final TrademarkDAO trademarkDAO;
    private final CategoryDAO categoryDAO;

    public ProductDAO(IConnectionPool connectionPool) {
        this.connectionPool = connectionPool;
        trademarkDAO = new TrademarkDAO(connectionPool);
        categoryDAO = new CategoryDAO(connectionPool);
    }

    @Override
    public List<Product> getList() throws SQLException {
        List<Product> products = new ArrayList<>();
        connection = connectionPool.getConnection();
        ResultSet rs = connection.prepareStatement(QUERY.PRODUCT.GET_LIST).executeQuery();
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            String description = rs.getString("description");
            int trademarkId = rs.getInt("trademark_id");
            int categoryId = rs.getInt("category_id");
            Date dateCreated = null;
            Date lastUpdated = null;
            try {
                dateCreated = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(rs.getString("date_created"));
                lastUpdated = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(rs.getString("last_updated"));
            } catch (ParseException e) {
                e.printStackTrace();
            }
            boolean active = rs.getBoolean("active");
            Trademark trademark = trademarkDAO.get(trademarkId);
            Category category = categoryDAO.get(categoryId);
            Product product = new Product(id, name, description, trademark, category, dateCreated, lastUpdated, active);
            products.add(product);
        }
        connectionPool.releaseConnection(connection);
        return products;
    }

    @Override
    public Product get(int id) throws SQLException {
        Product product = null;
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.PRODUCT.GET_ITEM_BY_ID);
        statement.setInt(1, id);
        ResultSet rs = statement.executeQuery();
        if (!rs.isBeforeFirst() && rs.getRow() == 0) {
            return null;
        }
        if (rs.next()) {
            String name = rs.getObject("name", String.class);
            String description = rs.getObject("description", String.class);
            int trademarkId = rs.getInt("trademark_id");
            int categoryId = rs.getInt("category_id");
            Date dateCreated = null;
            Date lastUpdated = null;
            try {
                dateCreated = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(rs.getString("date_created"));
                lastUpdated = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(rs.getString("last_updated"));
            } catch (ParseException e) {
                e.printStackTrace();
            }
            boolean active = rs.getBoolean("active");
            Trademark trademark = trademarkDAO.get(trademarkId);
            Category category = categoryDAO.get(categoryId);
            product = new Product(id, name, description, trademark, category, dateCreated, lastUpdated, active);
        }
        connectionPool.releaseConnection(connection);
        return product;
    }

    @Override
    public boolean save(Product item) throws SQLException {
        connection = connectionPool.getConnection();
        PreparedStatement statement;
        int result;
        if (item.getId() == 0) {
            statement = connection.prepareStatement(QUERY.PRODUCT.CREATE);
        } else {
            statement = connection.prepareStatement(QUERY.PRODUCT.UPDATE);
            statement.setBoolean(5, item.isActive());
            statement.setInt(6, item.getId());
        }
        statement.setString(1, item.getName());
        statement.setString(2, item.getDescription());
        statement.setInt(3, item.getTrademark().getId());
        statement.setInt(4, item.getCategory().getId());
        result = statement.executeUpdate();
        connectionPool.releaseConnection(connection);
        return result == 1;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        connection = connectionPool.getConnection();
        PreparedStatement statement = connection.prepareStatement(QUERY.PRODUCT.DELETE);
        statement.setInt(1, id);
        int result = statement.executeUpdate();
        connectionPool.releaseConnection(connection);
        return result == 1;
    }
}
