package vn.edu.hcmuaf.fit.controller;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.dao.*;
import vn.edu.hcmuaf.fit.database.IConnectionPool;
import vn.edu.hcmuaf.fit.model.Province;
import vn.edu.hcmuaf.fit.model.Trademark;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "TrademarkController", value = "/admin/trademark")
public class TrademarkController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private TrademarkDAO trademarkDAO;
    private ProvinceDAO provinceDAO;

    @Override
    public void init() throws ServletException {
        IConnectionPool connectionPool = (IConnectionPool) getServletContext().getAttribute("connectionPool");
        trademarkDAO = new TrademarkDAO(connectionPool);
        provinceDAO = new ProvinceDAO(connectionPool);
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
                case "getAll":
                    getAll(request, response);
                    break;
                case "get":
                    get(request, response);
                    break;
                case "create":
                    create(request, response);
                    break;
                case "update":
                    update(request, response);
                    break;
                case "delete":
                    delete(request, response);
                    break;
                default:
                    getMainPage(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void getMainPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        request.setAttribute("title", "QUẢN LÝ THƯƠNG HIỆU");
        List<Trademark> trademarks = trademarkDAO.getList();
        request.setAttribute("trademarks", trademarks);
        List<Province> provinces = provinceDAO.getList();
        request.setAttribute("provinces", provinces);
        request.getRequestDispatcher("/view/trademark/index.jsp").forward(request, response);
    }

    private void getAll(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        response.setContentType("application/json");
        List<Trademark> trademarks = trademarkDAO.getList();
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(trademarks));
        out.close();
    }

    private void get(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        Trademark trademark = trademarkDAO.get(id);
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(trademark));
        out.close();
    }

    private void create(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        String name = request.getParameter("name");
        String website = request.getParameter("website");
        trademarkDAO.save(new Trademark(0, name, website));
        response.sendRedirect(request.getContextPath() + "/admin/trademark");
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String website = request.getParameter("website");
        trademarkDAO.save(new Trademark(id, name, website));
        response.sendRedirect(request.getContextPath() + "/admin/trademark");
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        trademarkDAO.delete(id);
        response.sendRedirect(request.getContextPath() + "/admin/trademark");
    }
}
