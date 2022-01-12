package vn.edu.hcmuaf.fit.controller;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.dto.address.District;
import vn.edu.hcmuaf.fit.dto.address.Province;
import vn.edu.hcmuaf.fit.dto.address.Ward;
import vn.edu.hcmuaf.fit.model.Address;
import vn.edu.hcmuaf.fit.model.Trademark;
import vn.edu.hcmuaf.fit.service.AddressService;
import vn.edu.hcmuaf.fit.service.AddressServiceImpl;
import vn.edu.hcmuaf.fit.service.TrademarkService;
import vn.edu.hcmuaf.fit.service.TrademarkServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "TrademarkController", value = "/admin/trademark")
public class TrademarkController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private TrademarkService trademarkService;
    private AddressService addressService;

    @Override
    public void init() throws ServletException {
        trademarkService = new TrademarkServiceImpl();
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
        String action = request.getParameter("action");
        try {
            if (action == null) {
                getMainPage(request, response);
            } else switch (action) {
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
                case "createAddress":
                    createAddress(request, response);
                    break;
                case "deleteAddress":
                    deleteAddress(request, response);
                    break;
                case "changeActive":
                    changeActive(request, response);
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
        List<Trademark> trademarks = trademarkService.getList();
        List<Province> provinces = addressService.getProvinceList();
        request.setAttribute("trademarks", trademarks);
        request.setAttribute("provinces", provinces);
        request.getRequestDispatcher("/view/admin/trademark.jsp").forward(request, response);
    }

    private void get(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        Trademark trademark = trademarkService.get(id);
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(trademark));
        out.close();
    }

    private void create(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, ServletException {
        String name = request.getParameter("name");
        String website = request.getParameter("website");
        trademarkService.create(new Trademark(0, name, website));
        response.sendRedirect(request.getContextPath() + "/admin/trademark");
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String website = request.getParameter("website");
        trademarkService.update(new Trademark(id, name, website));
        response.sendRedirect(request.getContextPath() + "/admin/trademark");
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        trademarkService.delete(id);
        response.sendRedirect(request.getContextPath() + "/admin/trademark");
    }
    
    private void createAddress(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
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
        response.sendRedirect(request.getContextPath() + "/admin/trademark");
    }
    
    private void deleteAddress(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        addressService.delete(id);
        response.sendRedirect(request.getContextPath() + "/admin/trademark");
    }
    
    private void changeActive(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        trademarkService.changeActive(id);
        response.sendRedirect(request.getContextPath() + "/admin/trademark");
    }
}
