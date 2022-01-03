package vn.edu.hcmuaf.fit.controller;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.dao.CategoryDAOImpl;
import vn.edu.hcmuaf.fit.dao.ProductDAOImpl;
import vn.edu.hcmuaf.fit.dao.TrademarkDAOImpl;
import vn.edu.hcmuaf.fit.database.IConnectionPool;
import vn.edu.hcmuaf.fit.model.Category;
import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.model.Trademark;
import vn.edu.hcmuaf.fit.service.ProductService;
import vn.edu.hcmuaf.fit.service.ProductServiceImpl;

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
    private ProductService productService;
    
    @Override
    public void init() throws ServletException {
        productService = new ProductServiceImpl();
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

    private void changeActive(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        productService.changeActive(id);
        response.sendRedirect(request.getContextPath() + "/admin/product");
    }

    private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        int trademarkId = Integer.parseInt(request.getParameter("trademark"));
        String categorySku = request.getParameter("category");
        Trademark trademark = trademarkDAO.get(trademarkId);
        Category category = categoryDAO.get(categorySku);
        //productDAO.save(new Product(0, name, description, trademark, category, new Date(), new Date(), true));
        response.sendRedirect(request.getContextPath() + "/admin/product");
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String size = request.getParameter("size");
        String description = request.getParameter("description-content");
        int trademarkId = Integer.parseInt(request.getParameter("trademark"));
        String categorySku = request.getParameter("category");
        Trademark trademark = trademarkDAO.get(trademarkId);
        Category category = categoryDAO.get(categorySku);
        //boolean active = Integer.parseInt(request.getParameter("active")) == 1;
        productDAO.update(new Product(id, name, size, description, trademark, category, true, null));
        getMainPage(request, response);
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
        getMainPage(request, response);
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
