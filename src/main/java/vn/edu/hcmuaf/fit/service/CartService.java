package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.dto.cart.CartItem;
import vn.edu.hcmuaf.fit.model.User;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

public interface CartService {
	List<CartItem> getList(User user) throws SQLException, ParseException;
	void addToCart(CartItem item) throws SQLException;
	void updateQuantity(CartItem item) throws SQLException;
	void removeFromCart(CartItem item) throws SQLException;
	void removeAllFromCart(String userId) throws SQLException;
}