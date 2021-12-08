package vn.edu.hcmuaf.fit.controller;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.dao.CategoryDAO;
import vn.edu.hcmuaf.fit.dao.DistrictDAO;
import vn.edu.hcmuaf.fit.dao.WardDAO;
import vn.edu.hcmuaf.fit.database.DbContext;
import vn.edu.hcmuaf.fit.model.District;
import vn.edu.hcmuaf.fit.model.Ward;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "APIController", value = "/api/*")
public class APIController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private DistrictDAO districtDAO;
    private WardDAO wardDAO;

    @Override
    public void init() throws ServletException {
        try {
            DbContext context = (DbContext) getServletContext().getAttribute("context");
            if (!context.isConnected()) {
                if (!context.openConnection()) {
                    throw new IOException("Could not open connection");
                }
            }
            districtDAO = new DistrictDAO(context);
            wardDAO = new WardDAO(context);
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
        response.setContentType("application/json");
        String action = request.getPathInfo();
        switch (action) {
            case "/province":
                getDistrictList(request, response);
                break;
            case "/district":
                getWardList(request, response);
                break;
        }
    }

    private void getDistrictList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        List<District> districts = districtDAO.getListByProvinceId(id);
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(districts));
        out.close();
    }

    private void getWardList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        List<Ward> wards = wardDAO.getListByDistrictId(id);
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(wards));
        out.close();
    }
}
