package vn.edu.hcmuaf.fit.controller;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.dao.AddressDAO;
import vn.edu.hcmuaf.fit.dao.CategoryDAO;
import vn.edu.hcmuaf.fit.dao.DistrictDAO;
import vn.edu.hcmuaf.fit.dao.WardDAO;
import vn.edu.hcmuaf.fit.database.DbContext;
import vn.edu.hcmuaf.fit.dto.Address;
import vn.edu.hcmuaf.fit.model.District;
import vn.edu.hcmuaf.fit.model.Ward;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "APIController", value = "/api/*")
public class APIController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private DistrictDAO districtDAO;
    private WardDAO wardDAO;
    private AddressDAO addressDAO;

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
            addressDAO = new AddressDAO(context);
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
        String action = request.getPathInfo();
        switch (action) {
            case "/province":
                getDistrictList(request, response);
                break;
            case "/district":
                getWardList(request, response);
                break;
            case "/address":
                address(request, response);
                break;
        }
    }

    private void getDistrictList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        int id = Integer.parseInt(request.getParameter("id"));
        List<District> districts = districtDAO.getListByProvinceId(id);
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(districts));
        out.close();
    }

    private void getWardList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        int id = Integer.parseInt(request.getParameter("id"));
        List<Ward> wards = wardDAO.getListByDistrictId(id);
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(wards));
        out.close();
    }

    private void address(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "create":
                createAddress(request, response);
                break;
            case "checkExistWithPath":
                checkExistWithPath(request, response);
                break;
        }
    }

    private void createAddress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int districtId = Integer.parseInt(request.getParameter("districtId"));
        String street = request.getParameter("street");
        String number = request.getParameter("number");
        if (request.getParameter("wardId") == null) {
            District district = districtDAO.get(districtId);
            addressDAO.save(new Address(0, number, street, district));
        } else {
            int wardId = Integer.parseInt(request.getParameter("wardId"));
            Ward ward = wardDAO.get(wardId);
            addressDAO.save(new Address(0, number, street, ward, ward.getDistrict()));
        }
        TrademarkController.addressIds.add(addressDAO.getLastestId());
    }

    private void checkExistWithPath(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        String path = request.getParameter("path");
        Address address = addressDAO.getItemByPath(path);
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(address));
        out.close();
    }
}
