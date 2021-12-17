package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.IConnectionPool;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO implements IGeneralDAO<User> {
    private final IConnectionPool connectionPool;
    private Connection connection;

    public UserDAO(IConnectionPool connectionPool) {
        this.connectionPool = connectionPool;
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
    public User get(int id) throws SQLException {
        User user = null;
        connection = connectionPool.getConnection();
        //PreparedStatement statement = connection.prepareStatement(QUERY.USER.GET_ITEM_BY_ID);
        connectionPool.releaseConnection(connection);
        return user;
    }

    @Override
    public boolean save(User item) throws SQLException {
        return false;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        return false;
    }
}
