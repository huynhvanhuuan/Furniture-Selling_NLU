package vn.edu.hcmuaf.fit.controller;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.dao.CategoryDAO;
import vn.edu.hcmuaf.fit.dao.ProductDAO;
import vn.edu.hcmuaf.fit.dao.TrademarkDAO;
import vn.edu.hcmuaf.fit.database.IConnectionPool;
import vn.edu.hcmuaf.fit.model.Category;
import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.model.Trademark;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ProductController", value = "/admin/product")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 50, // 50MB
        maxRequestSize = 1024 * 1024 * 50) // 50MB
public class ProductController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProductDAO productDAO;
    private TrademarkDAO trademarkDAO;
    private CategoryDAO categoryDAO;

    @Override
    public void init() throws ServletException {
        IConnectionPool connectionPool = (IConnectionPool) getServletContext().getAttribute("connectionPool");
        productDAO = new ProductDAO(connectionPool);
        trademarkDAO = new TrademarkDAO(connectionPool);
        categoryDAO = new CategoryDAO(connectionPool);
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
                case "create":
                    create(request, response);
                    break;
                case "update":
                    update(request, response);
                    break;
                case "delete":
                    delete(request, response);
                    break;
                case "get":
                    get(request, response);
                    break;
                case "changeActive":
                    changeActive(request, response);
                    break;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void changeActive(HttpServletRequest request, HttpServletResponse response) {

    }

    private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        int trademarkId = Integer.parseInt(request.getParameter("trademark"));
        int categoryId = Integer.parseInt(request.getParameter("category"));
        Trademark trademark = trademarkDAO.get(trademarkId);
        Category category = categoryDAO.get(categoryId);
        //productDAO.save(new Product(0, name, description, trademark, category, new Date(), new Date(), true));
        response.sendRedirect(request.getContextPath() + request.getServletPath());
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String description = request.getParameter("description-content");
        int trademarkId = Integer.parseInt(request.getParameter("trademark"));
        int categoryId = Integer.parseInt(request.getParameter("category"));
        Trademark trademark = trademarkDAO.get(trademarkId);
        Category category = categoryDAO.get(categoryId);
        //boolean active = Integer.parseInt(request.getParameter("active")) == 1;
        productDAO.save(new Product(id, name, description, trademark, category, true));
        response.sendRedirect(request.getContextPath() + request.getServletPath());
        // Get part
        // Part part = request.getPart("image");
        // Get filename
        //String filename = part.getSubmittedFileName();
        // Setup path
        //String path = getFolderUpload().getAbsolutePath() + File.separator + System.currentTimeMillis() + "-" + filename;
        // Write file
        //part.write(path);
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        productDAO.delete(id);
        response.sendRedirect(request.getContextPath() + request.getServletPath());
    }

    private void getMainPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        // Set title
        request.setAttribute("title", "PRODUCT MANAGEMENT");

        // Database
        List<Product> products = productDAO.getList();
        request.setAttribute("products", products);

        // Get trademarks
        List<Trademark> trademarks = trademarkDAO.getList();
        request.setAttribute("trademarks", trademarks);

        // Get categories
        List<Category> categories = categoryDAO.getList();
        request.setAttribute("categories", categories);

        request.getRequestDispatcher(request.getContextPath() + "/view/product/index.jsp").forward(request, response);
    }

    private void get(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        response.setContentType("application/json");
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productDAO.get(id);
        System.out.println(id);
        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(product));
        out.close();
    }

    public File getFolderUpload() {
        File folderUpload = new File(System.getProperty("user.home") + "/Furniture Selling/images/product");
        if (!folderUpload.exists()) {
            if (folderUpload.mkdirs()) return folderUpload;
        }
        return folderUpload;
    }
}
