package vn.edu.hcmuaf.fit.controller;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.dao.*;
import vn.edu.hcmuaf.fit.database.DbContext;
import vn.edu.hcmuaf.fit.dto.Address;
import vn.edu.hcmuaf.fit.model.District;
import vn.edu.hcmuaf.fit.model.Province;
import vn.edu.hcmuaf.fit.model.Trademark;
import vn.edu.hcmuaf.fit.model.Ward;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "TrademarkController", value = "/trademark/*")
public class TrademarkController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private TrademarkDAO trademarkDAO;
    private AddressDAO addressDAO;
    private ProvinceDAO provinceDAO;
    private DistrictDAO districtDAO;
    private WardDAO wardDAO;
    public static List<Integer> addressIds = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        try {
            DbContext context = (DbContext) getServletContext().getAttribute("context");
            if (!context.isConnected()) {
                if (!context.openConnection()) {
                    throw new IOException("Could not open connection");
                }
            }
            trademarkDAO = new TrademarkDAO(context);
            addressDAO = new AddressDAO(context);
            provinceDAO = new ProvinceDAO(context);
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
        String action = request.getPathInfo();
        switch (action) {
            case "/create":
                create(request, response);
                break;
            case "/update":
                update(request, response);
                break;
            case "/get":
                get(request, response);
                break;
            case "/delete":
                delete(request, response);
                break;
            default:
                list(request, response);
                break;
        }
    }

    private void create(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        String website = request.getParameter("website");
        trademarkDAO.save(new Trademark(0, name, website));
        int lastestIdTrademark = trademarkDAO.getLastestId();
        for (int addressId : addressIds) {
            addressDAO.addAddress(lastestIdTrademark, addressId);
        }
        addressIds.clear();
        response.sendRedirect(request.getContextPath() + request.getServletPath() + "/list");
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String website = request.getParameter("website");
        //trademarkDAO.save(new Trademark(id, name, website));
        response.sendRedirect(request.getContextPath() + request.getServletPath() + "/list");
    }

    private void get(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        int id = Integer.parseInt(request.getParameter("id"));
        Trademark trademark = trademarkDAO.get(id);
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(trademark));
        out.close();
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        addressDAO.removeAddress(id);
        trademarkDAO.delete(id);
        response.sendRedirect(request.getContextPath() + request.getServletPath() + "/list");
    }

    private void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /* Set title */
        request.setAttribute("title", "QUẢN LÝ THƯƠNG HIỆU");

        /* Database */
        List<Trademark> trademarks = trademarkDAO.getList();
        request.setAttribute("trademarks", trademarks);

        List<Province> provinces = provinceDAO.getList();
        request.setAttribute("provinces", provinces);

        request.getRequestDispatcher("/view/trademark/list.jsp").forward(request, response);
    }
}
