package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.dao.ProductDAO;
import vn.edu.hcmuaf.fit.database.DbContext;
import vn.edu.hcmuaf.fit.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductController", value = "/product/*")
public class ProductController extends HttpServlet {
    private ProductDAO dao;

    @Override
    public void init() throws ServletException {
        DbContext context = (DbContext) getServletContext().getAttribute("context");
        dao = new ProductDAO(context);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getPathInfo();
        switch (action) {
            case "/create":
                create(request, response);
                break;
            case "/update":
                update(request, response);
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

    private void create(HttpServletRequest request, HttpServletResponse response) {
    }

    private void update(HttpServletRequest request, HttpServletResponse response) {
    }

    private void submit(HttpServletRequest request, HttpServletResponse response) {
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
    }

    private void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /* Set title */
        request.setAttribute("title", "PRODUCT MANAGEMENT");

        /* Database */
        List<Product> products = dao.getList();
        request.setAttribute("products", products);

        request.getRequestDispatcher("/view/product/list.jsp").forward(request, response);
    }
}
