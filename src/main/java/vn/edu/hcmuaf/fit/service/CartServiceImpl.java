package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.dao.CartDAO;
import vn.edu.hcmuaf.fit.dao.CartDAOImpl;
import vn.edu.hcmuaf.fit.dto.cart.CartItem;
import vn.edu.hcmuaf.fit.helper.DbManager;
import vn.edu.hcmuaf.fit.model.User;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

public class CartServiceImpl implements CartService {
	private final CartDAO cartDAO;
	
	public CartServiceImpl() {
		this.cartDAO = new CartDAOImpl(DbManager.connectionPool);
	}
	
	@Override
	public List<CartItem> getList(User user) throws SQLException, ParseException {
		return cartDAO.getList(user);
	}
	
	@Override
	public void addToCart(CartItem item) throws SQLException {
		cartDAO.addToCart(item);
	}
	
	@Override
	public void updateQuantity(CartItem item) throws SQLException {
		cartDAO.updateQuantity(item);
	}
	
	@Override
	public void removeFromCart(CartItem item) throws SQLException {
		cartDAO.removeFromCart(item);
	}
	
	@Override
	public void removeAllFromCart(String userId) throws SQLException {
		cartDAO.removeAllFromCart(userId);
	}
}
