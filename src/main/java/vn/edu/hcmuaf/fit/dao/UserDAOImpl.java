package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.IConnectionPool;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.helper.DbManager;
import vn.edu.hcmuaf.fit.model.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAOImpl implements UserDAO {
    private final IConnectionPool connectionPool;
    private Connection connection;

    public UserDAOImpl() {
        this.connectionPool = DbManager.connectionPool;
    }

    @Override
    public List<User> getList() throws SQLException {
        List<User> users = new ArrayList<>();
        connection = connectionPool.getConnection();
        ResultSet rs = connection.prepareStatement(QUERY.USER.GET_LIST).executeQuery();
        while (rs.next()) {

        }
        connectionPool.releaseConnection(connection);
        return users;
    }

    @Override
    public User get(String id) throws SQLException {
        User user = null;
        connection = connectionPool.getConnection();
        //PreparedStatement statement = connection.prepareStatement(QUERY.USER.GET_ITEM_BY_ID);
        connectionPool.releaseConnection(connection);
        return user;
    }

    @Override
    public void create(User item) throws SQLException {
    }
    
    @Override
    public void update(User item) throws SQLException {
    }

    @Override
    public void delete(String id) throws SQLException {
    }
}
