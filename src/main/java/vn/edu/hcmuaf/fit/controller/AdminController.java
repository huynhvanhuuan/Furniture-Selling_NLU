package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "AdminController", value = "/admin/dashboard")
public class AdminController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
            case "/admin/signin":
                getSignin(request, response);
                break;
            case "/admin/signout":
                signout(request, response);
                break;
            default:
                getDashboard(request, response);
        }
    }

    /* Show dashboard page */
    private void getDashboard(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        HttpSession session = request.getSession();
//        if (session.isNew() || session.getAttribute("user_id") == null) {
//            response.sendRedirect(request.getContextPath() + "/admin/signin");
//        } else {
            User user = new User();
            request.setAttribute("title", "Chào mừng trở lại, " + user.getUsername());
            request.getRequestDispatcher("/view/admin/index.jsp").forward(request, response);
//        }
    }

    /* Show sign in page */
    private void getSignin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/admin/signin.jsp").forward(request, response);
    }

    /* Submit sign in */
    private void signin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        Map<String, String> errors = new HashMap<>();
        if (email == null || email.trim().isEmpty()) {
            errors.put("email", "Email is required");
        } else {
            request.setAttribute("email", email);
        }
        if (password == null || password.trim().isEmpty()) {
            errors.put("password", "Password is required");
        } else {
            request.setAttribute("password", password);
        }
        if (errors.size() > 0) {
            errors.forEach(session::setAttribute);
            request.setAttribute("validate", "is-invalid");
            response.sendRedirect(request.getServletPath() + request.getContextPath() + "/signin");
        } else {
            session.setAttribute("email", email);
            response.sendRedirect( request.getServletPath() + request.getContextPath() + "/dashboard");
        }
    }

    /* Sign out */
    private void signout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.removeAttribute("email");
        response.sendRedirect(request.getServletPath() + request.getContextPath() + "/signin");
    }
}
