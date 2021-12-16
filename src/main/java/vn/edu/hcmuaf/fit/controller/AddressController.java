package vn.edu.hcmuaf.fit.controller;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.dao.*;
import vn.edu.hcmuaf.fit.database.IConnectionPool;
import vn.edu.hcmuaf.fit.dto.Address;
import vn.edu.hcmuaf.fit.model.District;
import vn.edu.hcmuaf.fit.model.Ward;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "AddressController", value = "/admin/address")
public class AddressController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private DistrictDAO districtDAO;
    private WardDAO wardDAO;
    private AddressDAO addressDAO;

    @Override
    public void init() throws ServletException {
        IConnectionPool connectionPool = (IConnectionPool) getServletContext().getAttribute("connectionPool");
        districtDAO = new DistrictDAO(connectionPool);
        wardDAO = new WardDAO(connectionPool);
        addressDAO = new AddressDAO(connectionPool);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        try {
            String action = request.getParameter("action");
            switch (action) {
                case "getProvinceList":
                    getDistrictList(request, response);
                    break;
                case "getDistrictList":
                    getWardList(request, response);
                    break;
                case "create":
                    create(request, response);
                    break;
                case "update":
                    update(request, response);
                    break;
                //case "getAll":
                //getAllAddress(request, response);
                //break;
                case "get":
                    get(request, response);
                    break;
                case "delete":
                    delete(request, response);
                    break;
                case "checkExistWithPath":
                    checkExistWithPath(request, response);
                    break;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void getDistrictList(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        response.setContentType("application/json");
        int id = Integer.parseInt(request.getParameter("id"));
        List<District> districts = districtDAO.getListByProvinceId(id);
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(districts));
        out.close();
    }

    private void getWardList(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        response.setContentType("application/json");
        int id = Integer.parseInt(request.getParameter("id"));
        List<Ward> wards = wardDAO.getListByDistrictId(id);
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(wards));
        out.close();
    }

    private void create(HttpServletRequest request, HttpServletResponse response) throws SQLException {
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
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        int districtId = Integer.parseInt(request.getParameter("districtId"));
        String street = request.getParameter("street");
        String number = request.getParameter("number");
        if (request.getParameter("wardId") == null) {
            District district = districtDAO.get(districtId);
            addressDAO.save(new Address(id, number, street, district));
        } else {
            int wardId = Integer.parseInt(request.getParameter("wardId"));
            Ward ward = wardDAO.get(wardId);
            addressDAO.save(new Address(id, number, street, ward, ward.getDistrict()));
        }
    }

    private void getAll(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        int id = Integer.parseInt(request.getParameter("id"));
        List<Address> addresses = addressDAO.getList();
        PrintWriter pw = response.getWriter();
        pw.println(new Gson().toJson(addresses));
        pw.close();
    }

    private void get(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Address address = addressDAO.get(id);
        PrintWriter pw = response.getWriter();
        pw.println(new Gson().toJson(address));
        pw.close();
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        addressDAO.delete(id);
    }

    private void checkExistWithPath(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        response.setContentType("application/json");
        String path = request.getParameter("path");
        Address address = addressDAO.getItemByPath(path);
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(address));
        out.close();
    }
}
