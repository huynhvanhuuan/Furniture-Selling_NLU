package vn.edu.hcmuaf.fit.helper;

import vn.edu.hcmuaf.fit.database.DbConnection;
import vn.edu.hcmuaf.fit.database.DbContext;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class DbManager implements ServletContextListener {

    private DbContext context;

    public DbManager() {}

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        /* Get parameters */
        String uid = sce.getServletContext().getInitParameter("uid");
        String pwd = sce.getServletContext().getInitParameter("pwd");
        String database = sce.getServletContext().getInitParameter("database");

        /* Connect to database */
        DbConnection connection = new DbConnection(uid, pwd, database);

        /* Setup database context */
        context = new DbContext(connection);
        sce.getServletContext().setAttribute("context", context);
        System.out.println("Database has been created!!!");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        if (context != null) {
            if (context.isConnected()) {
                context.closeConnection(false);
            }
        }
        context = null;
    }
}
