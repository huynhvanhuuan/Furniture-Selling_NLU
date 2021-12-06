package vn.edu.hcmuaf.fit.controller;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.dao.CategoryDAO;
import vn.edu.hcmuaf.fit.database.DbContext;
import vn.edu.hcmuaf.fit.model.Category;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "CategoryController", value = "/category/*")
public class CategoryController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CategoryDAO dao;

    @Override
    public void init() throws ServletException {
        try {
            DbContext context = (DbContext) getServletContext().getAttribute("context");
            if (!context.isConnected()) {
                if (!context.openConnection()) {
                    throw new IOException("Could");
                }
            }
            dao = new CategoryDAO(context);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getPathInfo();
        switch (action) {
            case "/create":
                create(request, response);
                break;
            case "/update":
                update(request, response);
                break;
            case "/get":
                get(request, response);
                break;
            case "/submit":
                submit(request, response);
                break;
            case "/delete":
                delete(request, response);
                break;
            default:
                list(request, response);
                break;
        }
    }

    private void create(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        Category category = new Category();
        category.setName(name);
        dao.save(category);
        response.sendRedirect(request.getContextPath() + request.getServletPath() + "/list");
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String sku = request.getParameter("sku");
        String name = request.getParameter("name");
        Category category = new Category(id, sku, name);
        dao.save(category);
        response.sendRedirect(request.getContextPath() + request.getServletPath() + "/list");
    }

    private void get(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        int id = Integer.parseInt(request.getParameter("id"));
        Category category = dao.get(id);
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(category));
        out.close();
    }

    private void submit(HttpServletRequest request, HttpServletResponse response) throws IOException {
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        dao.delete(id);
        response.sendRedirect(request.getContextPath() + request.getServletPath() + "/list");
    }

    private void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /* Set title */
        request.setAttribute("title", "CATEGORY MANAGEMENT");

        /* Database */
        List<Category> categories = dao.getList();
        request.setAttribute("categories", categories);

        request.getRequestDispatcher("/view/category/list.jsp").forward(request, response);
    }
}
