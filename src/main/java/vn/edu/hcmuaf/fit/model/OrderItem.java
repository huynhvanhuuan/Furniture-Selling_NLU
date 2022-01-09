package vn.edu.hcmuaf.fit.model;

import vn.edu.hcmuaf.fit.dto.product.ProductDetail;

import java.io.Serializable;

public class OrderItem implements Serializable {
	private ProductDetail product;
	private long unitPrice;
	private int quantity;
	
	public OrderItem() {
	}
	
	public OrderItem(ProductDetail product, long unitPrice, int quantity) {
		this.product = product;
		this.unitPrice = unitPrice;
		this.quantity = quantity;
	}
	
	public ProductDetail getProduct() {
		return product;
	}
	
	public void setProduct(ProductDetail product) {
		this.product = product;
	}
	
	public long getUnitPrice() {
		return unitPrice;
	}
	
	public void setUnitPrice(long unitPrice) {
		this.unitPrice = unitPrice;
	}
	
	public int getQuantity() {
		return quantity;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}
