package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.entity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ProductController", value = "/product/*")
public class ProductController extends HttpServlet {

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
                read(request, response);
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

    private void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("title", "PRODUCT <i class='fas fa-box-open text-success'></i>");
        request.getRequestDispatcher("/view/product/list.jsp").forward(request, response);
    }
}
