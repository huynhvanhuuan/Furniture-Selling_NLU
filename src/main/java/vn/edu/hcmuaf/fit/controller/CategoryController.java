package vn.edu.hcmuaf.fit.controller;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.model.Category;
import vn.edu.hcmuaf.fit.service.CategoryService;
import vn.edu.hcmuaf.fit.service.CategoryServiceImpl;

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
    private CategoryService categoryService;
    
    @Override
    public void init() throws ServletException {
        categoryService = new CategoryServiceImpl();
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
                case "delete":
                    delete(request, response);
                    break;
                case "changeActive":
                    changeActive(request, response);
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
        request.setAttribute("title", "QUẢN LÝ THỂ LOẠI");
        List<Category> categories = categoryService.getList();
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("/view/admin/category.jsp").forward(request, response);
    }

    private void create(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, ServletException {
        String name = request.getParameter("name");
        String sku = request.getParameter("sku");
        categoryService.create(new Category(sku, name, true));
        getMainPage(request, response);
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, ServletException {
        String sku = request.getParameter("sku");
        String name = request.getParameter("name");
        String active = request.getParameter("active");
        Category category = new Category(sku, name, active.equals("1"));
        categoryService.update(category);
        getMainPage(request, response);
    }

    private void get(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        response.setContentType("application/json");
        String sku = request.getParameter("sku");
        Category category = categoryService.get(sku);
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(category));
        out.close();
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, ServletException {
        String sku = request.getParameter("sku");
        categoryService.delete(sku);
        getMainPage(request, response);
    }
    
    private void changeActive(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, ServletException {
        String sku = request.getParameter("sku");
        categoryService.changeActive(sku);
        getMainPage(request, response);
    }
}
