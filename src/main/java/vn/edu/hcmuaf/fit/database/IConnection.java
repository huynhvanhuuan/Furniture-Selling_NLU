package vn.edu.hcmuaf.fit.database;

import java.sql.Connection;

public interface IConnection {
    Connection getConnection();
    String getConnectionString();
}
