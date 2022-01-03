package vn.edu.hcmuaf.fit.controller;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.dto.address.Province;
import vn.edu.hcmuaf.fit.model.Address;
import vn.edu.hcmuaf.fit.dto.address.District;
import vn.edu.hcmuaf.fit.dto.address.Ward;
import vn.edu.hcmuaf.fit.service.AddressService;
import vn.edu.hcmuaf.fit.service.AddressServiceImpl;

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
    private AddressService addressService;
    
    @Override
    public void init() throws ServletException {
        addressService = new AddressServiceImpl();
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
                    getProvinceList(response);
                    break;
                case "getDistrictList":
                    getDistrictList(request, response);
                    break;
                case "getWardList":
                    getWardList(request, response);
                    break;
                case "createTrademarkAddress":
                    createTrademarkAddress(request, response);
                    break;
                case "createUserAddress":
                    createUserAddress(request, response);
                    break;
                case "update":
                    update(request, response);
                    break;
                case "getAddressById":
                    getAddressById(request, response);
                    break;
                case "getAddressByPath":
                    getAddressByPath(request, response);
                    break;
                case "delete":
                    delete(request, response);
                    break;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    private void getProvinceList(HttpServletResponse response) throws IOException, SQLException {
        response.setContentType("application/json");
        List<Province> provinces = addressService.getProvinceList();
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(provinces));
        out.close();
    }
    
    private void getDistrictList(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        response.setContentType("application/json");
        int id = Integer.parseInt(request.getParameter("id"));
        List<District> districts = addressService.getDistrictListByProvinceId(id);
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(districts));
        out.close();
    }

    private void getWardList(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        response.setContentType("application/json");
        int id = Integer.parseInt(request.getParameter("id"));
        List<Ward> wards = addressService.getWardListByDistrictId(id);
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(wards));
        out.close();
    }
    
    private void getAddressById(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        response.setContentType("application/json");
        int id = Integer.parseInt(request.getParameter("id"));
        Address address = addressService.getAddress(id);
        PrintWriter pw = response.getWriter();
        pw.println(new Gson().toJson(address));
        pw.close();
    }
    
    private void getAddressByPath(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        response.setContentType("application/json");
        String path = request.getParameter("path");
        Address address = addressService.getAddress(path);
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(address));
        out.close();
    }

    private void createTrademarkAddress(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        String url = request.getParameter("url");
        int trademarkId = Integer.parseInt(request.getParameter("trademarkId"));
        String path = request.getParameter("path");
        int districtId = Integer.parseInt(request.getParameter("district"));
        int wardId = Integer.parseInt(request.getParameter("ward"));
        String street = request.getParameter("street");
        String number = request.getParameter("number");
        if (number.equals("")) number = null;
        if (wardId == 0) {
            District district = addressService.getDistrict(districtId);
            addressService.createTrademarkAddress(trademarkId, new Address(0, number, street, null, district, path));
        } else {
            Ward ward = addressService.getWard(wardId);
            addressService.createTrademarkAddress(trademarkId, new Address(0, number, street, ward, ward.getDistrict(), path));
        }
        response.sendRedirect(request.getContextPath() + url);
    }
    
    private void createUserAddress(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
//        String url = request.getParameter("url");
//        int trademarkId = Integer.parseInt(request.getParameter("trademarkId"));
//        int districtId = Integer.parseInt(request.getParameter("district"));
//        String wardId = request.getParameter("ward");
//        String street = request.getParameter("street");
//        String number = request.getParameter("number");
//        if (number.equals("")) number = null;
//        if (wardId.equals("")) {
//            District district = addressService.getDistrict(districtId);
//            addressService.createUserAddress(trademarkId, new Address(0, number, street, district));
//        } else {
//            Ward ward = addressService.getWard(Integer.parseInt(wardId));
//            addressService.createTrademarkAddress(trademarkId, new Address(0, number, street, ward, ward.getDistrict()));
//        }
//        response.sendRedirect(request.getContextPath() + url);
    }
    
    private void update(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        String url = request.getParameter("url");
        int id = Integer.parseInt(request.getParameter("id"));
        String path = request.getParameter("path");
        int districtId = Integer.parseInt(request.getParameter("district"));
        String wardId = request.getParameter("ward");
        String street = request.getParameter("street");
        String number = request.getParameter("number");
        if (number.equals("")) number = null;
        if (wardId.equals("")) {
            District district = addressService.getDistrict(districtId);
            addressService.update(new Address(id, number, street, null, district, path));
        } else {
            Ward ward = addressService.getWard(Integer.parseInt(wardId));
            addressService.update(new Address(id, number, street, ward, ward.getDistrict(), path));
        }
        response.sendRedirect(request.getContextPath() + url);
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        String url = request.getParameter("url");
        int id = Integer.parseInt(request.getParameter("id"));
        addressService.delete(id);
        response.sendRedirect(request.getContextPath() + url);
    }
}
