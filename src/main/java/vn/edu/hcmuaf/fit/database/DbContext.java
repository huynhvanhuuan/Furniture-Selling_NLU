package vn.edu.hcmuaf.fit.database;

import java.sql.*;

public class DbContext {
    Connection connection;
    IConnection _connection;

    public DbContext() {}

    public DbContext(IConnection connection) {
        this._connection = connection;
    }

    public boolean openConnection() {
        try {
            if (_connection == null) throw new IllegalStateException("Define connection!");
            if (connection != null) closeConnection(false);
            connection = _connection.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return connection != null;
    }

    public boolean closeConnection(boolean keepAlive) {
        try {
            if (connection != null) {
                if (!connection.isClosed()) connection.close();
                if (!keepAlive) connection = null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public boolean isConnected() {
        return connection != null;
    }

    public Connection getConnection()
    {
        return connection;
    }

    public boolean executeUpdate(String query) {
        try {
            Statement statement = connection.createStatement();
            int result = statement.executeUpdate(query);
            statement.close();
            return result != -1;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public ResultSet executeQuery(String query) {
        try {
            Statement statement = connection.createStatement();
            return statement.executeQuery(query);
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String getConnectionString() {
        return _connection.getConnectionString();
    }
}
