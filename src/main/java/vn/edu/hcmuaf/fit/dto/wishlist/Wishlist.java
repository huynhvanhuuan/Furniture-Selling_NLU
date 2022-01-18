package vn.edu.hcmuaf.fit.dto.wishlist;

import vn.edu.hcmuaf.fit.model.ProductDetail;
import vn.edu.hcmuaf.fit.model.User;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Wishlist implements Serializable {
	private User user;
	private List<ProductDetail> productList;
	
	public Wishlist() {
	}
	
	public Wishlist(User user, List<ProductDetail> productList) {
		this.user = user;
		this.productList = productList;
	}
	
	public User getUser() {
		return user;
	}
	
	public void setUser(User user) {
		this.user = user;
	}
	
	public List<ProductDetail> getListProduct() {
		return productList;
	}
	
	public void setListProduct(List<ProductDetail> productList) {
		this.productList = productList;
	}

	public void addToWishlist(ProductDetail product) {
		if (productList == null) productList = new ArrayList<>();
		productList.add(product);
	}
}
