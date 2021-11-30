package vn.edu.hcmuaf.fit.controller;

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
        if (action == null) {
            show(request, response);
        } else {
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
    }

    private void create(HttpServletRequest request, HttpServletResponse response) {
    }

    private void update(HttpServletRequest request, HttpServletResponse response) {
    }

    private void submit(HttpServletRequest request, HttpServletResponse response) {
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
    }

    private void read(HttpServletRequest request, HttpServletResponse response) {
    }

    private void show(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/product.jsp");
        dispatcher.forward(request, response);
    }
}
