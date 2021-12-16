package vn.edu.hcmuaf.fit.controller;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.dao.CategoryDAO;
import vn.edu.hcmuaf.fit.database.IConnectionPool;
import vn.edu.hcmuaf.fit.model.Category;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "CategoryController", value = "/admin/category")
public class CategoryController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CategoryDAO categoryDAO;

    @Override
    public void init() throws ServletException {
        IConnectionPool connectionPool = (IConnectionPool) getServletContext().getAttribute("connectionPool");
        categoryDAO = new CategoryDAO(connectionPool);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        try {
            if (action == null) {
                getMainPage(request, response);
            } else switch (action) {
                case "create":
                    create(request, response);
                    break;
                case "update":
                    update(request, response);
                    break;
                case "get":
                    get(request, response);
                    break;
                case "getAll":
                    getAll(request, response);
                    break;
                case "delete":
                    delete(request, response);
                    break;
                default:
                    getMainPage(request, response);
                    break;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void getMainPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        /* Set title */
        request.setAttribute("title", "QUẢN LÝ THỂ LOẠI");

        /* Database */
        List<Category> categories = categoryDAO.getList();
        request.setAttribute("categories", categories);

        request.getRequestDispatcher("/view/category/index.jsp").forward(request, response);
    }

    private void getAll(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        response.setContentType("application/json");
        List<Category> categories = categoryDAO.getList();
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(categories));
        out.close();
    }

    private void create(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        String name = request.getParameter("name");
        String sku = request.getParameter("sku");
        categoryDAO.save(new Category(0, sku, name));
        response.sendRedirect(request.getContextPath() + request.getServletPath() + "/list");
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        String sku = request.getParameter("sku");
        String name = request.getParameter("name");
        Category category = new Category(id, sku, name);
        categoryDAO.save(category);
        response.sendRedirect(request.getContextPath() + request.getServletPath() + "/list");
    }

    private void get(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        response.setContentType("application/json");
        int id = Integer.parseInt(request.getParameter("id"));
        Category category = categoryDAO.get(id);
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(category));
        out.close();
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        categoryDAO.delete(id);
        response.sendRedirect(request.getContextPath() + request.getServletPath() + "/list");
    }
}
