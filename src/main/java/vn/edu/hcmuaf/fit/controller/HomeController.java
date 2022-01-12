package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.dto.cart.CartItem;
import vn.edu.hcmuaf.fit.model.*;
import vn.edu.hcmuaf.fit.service.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

@WebServlet(name = "HomeController", value = "/home")
public class HomeController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProductService productService;
    private TrademarkService trademarkService;
    private CategoryService categoryService;
    private WarehouseService warehouseService;
    private CartService cartService;

    @Override
    public void init() throws ServletException {
        productService = new ProductServiceImpl();
        trademarkService = new TrademarkServiceImpl();
        categoryService = new CategoryServiceImpl();
        warehouseService = new WareHouseServiceImpl();
        cartService = new CartServiceImpl();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        String action = request.getParameter("action");
        try {
            switch (action) {
                case "addToCart":
                    addToCart(request, response);
                    break;
                case "updateQuantity":
                    updateQuantity(request, response);
                    break;
                case "removeFromCart":
                    removeFromCart(request, response);
                    break;
                case "removeAllFromCart":
                    removeAllFromCart(request, response);
                    break;
            }
            switch (path) {
                case "/product":
                    getProductPage(request, response);
                    break;
                case "/wishlist":
                    getWishlistPage(request, response);
                    break;
                case "/cart":
                    getCartPage(request, response);
                    break;
                case "/profile":
                    getProfilePage(request, response);
                    break;
                case "/contact-us":
                    getContactPage(request, response);
                    break;
                case "/about-us":
                    getAboutPage(request, response);
                    break;
                case "/faqs":
                    getFAQsPage(request, response);
                    break;
                default:
                    getHomePage(request, response);
            }
        } catch (SQLException | ParseException e) {
            e.printStackTrace();
        }
    }
    
    private void getProfilePage(HttpServletRequest request, HttpServletResponse response) {
    }
    
    private void getCartPage(HttpServletRequest request, HttpServletResponse response) {
    }
    
    private void getWishlistPage(HttpServletRequest request, HttpServletResponse response) {
    }
    
    private void getHomePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, ParseException {
        getListProductData(request, response, 8);

        getListNewNDiscount(request, response, 8);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/index.jsp");
        dispatcher.forward(request, response);
    }

    private void getProductPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, ParseException {
        List<Product> products = productService.getList();
        request.setAttribute("products", products);
        List<Trademark> trademarks = trademarkService.getList();
        request.setAttribute("trademarks", trademarks);
        List<Category> categories = categoryService.getList();
        request.setAttribute("categories", categories);
        RequestDispatcher dispatcher = request.getRequestDispatcher(request.getContextPath() + "/view/product.jsp");
        dispatcher.forward(request, response);
    }

    private void getContactPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/contact-us.jsp");
        dispatcher.forward(request, response);
    }

    private void getAboutPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/about-us.jsp");
        dispatcher.forward(request, response);
    }

    private void getFAQsPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/faqs.jsp");
        dispatcher.forward(request, response);
    }

    private void getListProductData(HttpServletRequest request, HttpServletResponse response, int countProduct) throws SQLException, ParseException {
        /*HttpSession session = request.getSession();
        String userId = (String) session.getAttribute("user_id");

        // get list product;
        List<Product> products = productService.getList(countProduct);
        request.setAttribute("products", products);

        // get products detail
        Map<Integer, Map<String, String>> productsDetails = productService.getListData(countProduct);
        request.setAttribute("product-details", productsDetails);

        // get cart
        Map<Integer, Map<String, String>> cart = productService.getCartOrWishlist(userId, true);
        request.setAttribute("cart", cart);

        // get wishlist
        Map<Integer, Map<String, String>> wishlist = productService.getCartOrWishlist(userId, false);
        request.setAttribute("wishlist", wishlist);*/
    }

    private void getListNewNDiscount(HttpServletRequest request, HttpServletResponse response, int countProduct) throws SQLException {
        /*// get list product new
        Map<Integer, Map<String, String>> listNew = productDAO.getListByCondition(true, countProduct);
        request.setAttribute("list_new", listNew);

        // get list product which has discount
        Map<Integer, Map<String, String>> listHasDiscount = productDAO.getListByCondition(false, countProduct);
        request.setAttribute("list_discount", listHasDiscount);*/
    }
    
    private void addToCart(HttpServletRequest request, HttpServletResponse response) throws SQLException, ParseException {
        User user = (User) request.getSession().getAttribute("user");
        ProductDetail product = warehouseService.getProduct(request.getParameter("sku"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        cartService.addToCart(new CartItem(user, product, quantity));
    }
    
    private void updateQuantity(HttpServletRequest request, HttpServletResponse response) throws SQLException, ParseException {
        User user = (User) request.getSession().getAttribute("user");
        ProductDetail product = warehouseService.getProduct(request.getParameter("sku"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        cartService.updateQuantity(new CartItem(user, product, quantity));
    }
    
    private void removeFromCart(HttpServletRequest request, HttpServletResponse response) throws SQLException, ParseException {
        User user = (User) request.getSession().getAttribute("user");
        ProductDetail product = warehouseService.getProduct(request.getParameter("sku"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        cartService.removeFromCart(new CartItem(user, product, quantity));
    }
    
    private void removeAllFromCart(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        User user = (User) request.getSession().getAttribute("user");
        cartService.removeAllFromCart(user.getId());
    }
}
