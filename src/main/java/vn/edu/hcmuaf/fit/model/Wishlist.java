package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;

public class Wishlist implements Serializable {
	private User user;
	private ProductDetail product;
	
	public Wishlist() {
	}
	
	public Wishlist(User user, ProductDetail product) {
		this.user = user;
		this.product = product;
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
}
