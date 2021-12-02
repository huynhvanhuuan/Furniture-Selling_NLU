package vn.edu.hcmuaf.fit.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminController", value = "/admin/*")
public class AdminController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getPathInfo();
        if (action == null) {
            getDashboard(request, response);
        } else {
            switch (action) {
                case "/signin":
                    getSignin(request, response);
                    break;
                case "/submit":
                    signin(request, response);
                    break;
                case "/signout":
                    signout(request, response);
                    break;
                default:
                    getDashboard(request, response);
                    break;
            }
        }
    }

    /* Show dashboard page */
    private void getDashboard(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/admin/index.jsp").forward(request, response);
    }

    /* Show sign in page */
    private void getSignin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/admin/signin.jsp").forward(request, response);
    }

    /* Submit sign in */
    private void signin(HttpServletRequest request, HttpServletResponse response) {
    }

    /* Sign out */
    private void signout(HttpServletRequest request, HttpServletResponse response) {
    }
}
