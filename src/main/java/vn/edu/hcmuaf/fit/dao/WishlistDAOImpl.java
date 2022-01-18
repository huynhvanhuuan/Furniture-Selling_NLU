package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.IConnectionPool;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.model.ProductDetail;
import vn.edu.hcmuaf.fit.model.User;
import vn.edu.hcmuaf.fit.model.Wishlist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

public class WishlistDAOImpl implements WishlistDAO {
    private final IConnectionPool connectionPool;
    private Connection connection;
    private final WarehouseDAO warehouseDAO;

    public WishlistDAOImpl(IConnectionPool connectionPool) {
        this.connectionPool = connectionPool;
        this.warehouseDAO = new WarehouseDAOImpl(connectionPool);
    }

    @Override
    public List<Wishlist> getList(User user) throws SQLException, ParseException {
        List<Wishlist> list = new ArrayList<>();
        connection = connectionPool.getConnection();
        connectionPool.releaseConnection(connection);
        PreparedStatement statement = connection.prepareStatement(QUERY.WISHLIST.GET_LIST);
        statement.setString(1, user.getId());
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            ProductDetail product = warehouseDAO.getProduct(rs.getString("product_sku"));
            Wishlist item = new Wishlist(user, product);
            list.add(item);
        }
        return list;
    }

    @Override
    public void addToWishlist(Wishlist item) throws SQLException {
        connection = connectionPool.getConnection();
        connectionPool.releaseConnection(connection);
        PreparedStatement statement = connection.prepareStatement(QUERY.WISHLIST.ADD);
        statement.setString(1, item.getUser().getId());
        statement.setString(2, item.getProduct().getSku());
        statement.executeUpdate();
    }

    @Override
    public void removeFromWishlist(Wishlist item) throws SQLException {
        connection = connectionPool.getConnection();
        connectionPool.releaseConnection(connection);
        PreparedStatement statement = connection.prepareStatement(QUERY.WISHLIST.REMOVE);
        statement.setString(1, item.getUser().getId());
        statement.setString(2, item.getProduct().getSku());
        statement.executeUpdate();
    }

    @Override
    public void removeAllFromWishlist(String userId) throws SQLException {
        connection = connectionPool.getConnection();
        connectionPool.releaseConnection(connection);
        PreparedStatement statement = connection.prepareStatement(QUERY.WISHLIST.REMOVE_ALL);
        statement.setString(1, userId);
        statement.executeUpdate();
    }
}
