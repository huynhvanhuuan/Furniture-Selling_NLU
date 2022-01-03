package vn.edu.hcmuaf.fit.helper;

import vn.edu.hcmuaf.fit.database.DbConnection;
import vn.edu.hcmuaf.fit.database.IConnectionPool;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class DbManager implements ServletContextListener {

    public static IConnectionPool connectionPool;

    public DbManager() {}

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        String uid = sce.getServletContext().getInitParameter("uid");
        String pwd = sce.getServletContext().getInitParameter("pwd");
        String database = sce.getServletContext().getInitParameter("database");
        connectionPool = DbConnection.init(uid, pwd, database);
         sce.getServletContext().setAttribute("connectionPool", connectionPool);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        if (connectionPool != null) connectionPool = null;
    }
}
