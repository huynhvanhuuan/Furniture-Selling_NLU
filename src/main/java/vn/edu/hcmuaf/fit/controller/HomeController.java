package vn.edu.hcmuaf.fit.controller;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.dao.*;
import vn.edu.hcmuaf.fit.database.DbConnection;
import vn.edu.hcmuaf.fit.database.IConnectionPool;
import vn.edu.hcmuaf.fit.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "HomeController", value = "/home")
public class HomeController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProductDAO productDAO;
    private TrademarkDAO trademarkDAO;
    private CategoryDAO categoryDAO;

    @Override
    public void init() throws ServletException {
        IConnectionPool connectionPool = (IConnectionPool) getServletContext().getAttribute("connectionPool");
        productDAO = new ProductDAOImpl(connectionPool);
        trademarkDAO = new TrademarkDAOImpl(connectionPool);
        categoryDAO = new CategoryDAOImpl(connectionPool);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        try {
            switch (path) {
                case "/products":
                    getProduct(request, response);
                    break;
                case "/contact-us":
                    getContact(request, response);
                    break;
                case "/about-us":
                    getAbout(request, response);
                    break;
                case "/faqs.jsp":
                    getFAQs(request, response);
                    break;
                default:
                    getHome(request, response);
            }
        } catch (SQLException | ParseException e) {
            e.printStackTrace();
        }
    }

    private void getHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, ParseException {
        getListProductData(request, response, 8);

        getListNewNDiscount(request, response, 8);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/index.jsp");
        dispatcher.forward(request, response);
    }

    private void getProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, ParseException {
//        String id = request.getParameter("id");
//        if (id != null) {
//            int productId = Integer.parseInt(id);
//            Product product = productDAO.get(productId);
////            request.setAttribute("product", product);
//            String productData = new Gson().toJson(product);
//            request.setAttribute("product", productData);
//            RequestDispatcher dispatcher = request.getRequestDispatcher("/view/product-detail.jsp");
//            dispatcher.forward(request, response);
//        } else {}

        getListProductData(request, response, 0);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/products.jsp");
        dispatcher.forward(request, response);
    }

    private void getContact(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/contact-us.jsp");
        dispatcher.forward(request, response);
    }

    private void getAbout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/about-us.jsp");
        dispatcher.forward(request, response);
    }

    private void getFAQs(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/faqs.jsp");
        dispatcher.forward(request, response);
    }

    // for products page
    private void getListProductData(HttpServletRequest request, HttpServletResponse response, int countProduct) throws SQLException, ParseException {
        HttpSession session = request.getSession();
        String userId = (String) session.getAttribute("user_id");

        // get list product;
        List<Product> products = productDAO.getList(countProduct);
        request.setAttribute("products", products);

        // get products detail
        Map<Integer, Map<String, String>> productsDetails = productDAO.getListData(countProduct);
        request.setAttribute("product-details", productsDetails);

        // get cart
        Map<Integer, Map<String, String>> cart = productDAO.getCartOrWishlist(userId, true);
        request.setAttribute("cart", cart);

        // get wishlist
        Map<Integer, Map<String, String>> wishlist = productDAO.getCartOrWishlist(userId, false);
        request.setAttribute("wishlist", wishlist);
    }

    // for home page
    private void getListNewNDiscount(HttpServletRequest request, HttpServletResponse response, int countProduct) throws SQLException {
        // get list product new
        Map<Integer, Map<String, String>> listNew = productDAO.getListByCondition(true, countProduct);
        request.setAttribute("list_new", listNew);

        // get list product which has discount
        Map<Integer, Map<String, String>> listHasDiscount = productDAO.getListByCondition(false, countProduct);
        request.setAttribute("list_discount", listHasDiscount);
    }
}
