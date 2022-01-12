package vn.edu.hcmuaf.fit.dto.order;

import vn.edu.hcmuaf.fit.model.ProductDetail;

import java.io.Serializable;

public class OrderItem implements Serializable {
	private ProductDetail product;
	private int quantity;
	
	public OrderItem() {
	}
	
	public OrderItem(ProductDetail product, int quantity) {
		this.product = product;
		this.quantity = quantity;
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
