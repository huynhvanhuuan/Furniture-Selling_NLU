package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "HomeController", value = "/home")
public class HomeController extends HttpServlet {

    @Override
    public void init() throws ServletException { }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        switch (path) {
            case "/product":
                getProduct(request, response);
                break;
            case "/contact":
                getContact(request, response);
                break;
            case "/about":
                getAbout(request, response);
                break;
            default:
                getHome(request, response);
                break;
        }
    }

    private void getHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        if (id != null) {
            Product product = new Product();
            request.setAttribute("product", product);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/view/product-detail.jsp");
            dispatcher.forward(request, response);
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/view/product.jsp");
            dispatcher.forward(request, response);
        }
    }

    private void getProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/product.jsp");
        dispatcher.forward(request, response);
    }

    private void getContact(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/contact.jsp");
        dispatcher.forward(request, response);
    }

    private void getAbout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/about.jsp");
        dispatcher.forward(request, response);
    }
}
