package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.dao.CategoryDAO;
import vn.edu.hcmuaf.fit.database.DbContext;
import vn.edu.hcmuaf.fit.model.Category;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryController", value = "/category/*")
public class CategoryController extends HttpServlet {
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
        request.setAttribute("title", "CATEGORY <i class='fas fa-box-open text-success'></i>");

        /* Database */
        //List<Category> categories = dao.getList();
        //request.setAttribute("categories", categories);

        request.getRequestDispatcher("/view/category/list.jsp").forward(request, response);
    }
}
