package vn.edu.hcmuaf.fit.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection extends DbInfo implements IConnection {

    public DbConnection(String uid, String pwd, String database) {
        super(uid, pwd, database);
    }

    @Override
    public Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance();
            return DriverManager.getConnection(getConnectionString(), getUid(), getPwd());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public String getConnectionString() {
        return String.format("jdbc:mysql://localhost/%s?useUnicode=true&characterEncoding=utf-8", getDatabase());
    }
}
