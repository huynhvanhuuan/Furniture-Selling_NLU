package vn.edu.hcmuaf.fit.dto.cart;

import vn.edu.hcmuaf.fit.model.ProductDetail;
import vn.edu.hcmuaf.fit.model.User;

import java.io.Serializable;

public class CartItem implements Serializable {
	private User user;
	private ProductDetail product;
	private int quantity;
	
	public CartItem() {}
	
	public CartItem(User user, ProductDetail product, int quantity) {
		this.user = user;
		this.product = product;
		this.quantity = quantity;
	}
	
	public User getUser() {
		return user;
	}
	
	public void setUser(User user) {
		this.user = user;
	}
	
	public ProductDetail getProduct() {
		return product;
	}
	
	public void setProduct(ProductDetail product) {
		this.product = product;
	}
	
	public int getQuantity() {
		return quantity;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}
