package vn.edu.hcmuaf.fit.model;

import vn.edu.hcmuaf.fit.dto.product.Color;
import vn.edu.hcmuaf.fit.dto.product.Material;

import java.io.Serializable;
import java.util.Date;

public class ProductDetail implements Serializable {
	private String sku;
	private Product product;
	private Color color;
	private Material material;
	private int unitPrice;
	private int unitInStock;
	private int discount;
	private Date dateCreated;
	private Date lastUpdated;
	private boolean active;
	
	public ProductDetail() {
	}
	
	public ProductDetail(String sku, Product product, String size, Color color, Material material, int unitPrice, int unitInStock, int discount, Date dateCreated, Date lastUpdated, boolean active) {
		this.sku = sku;
		this.product = product;
		this.color = color;
		this.material = material;
		this.unitPrice = unitPrice;
		this.unitInStock = unitInStock;
		this.discount = discount;
		this.dateCreated = dateCreated;
		this.lastUpdated = lastUpdated;
		this.active = active;
	}
	
	public String getSku() {
		return sku;
	}
	
	public void setSku(String sku) {
		this.sku = sku;
	}
	
	public Product getProduct() {
		return product;
	}
	
	public void setProduct(Product product) {
		this.product = product;
	}
	
	public Color getColor() {
		return color;
	}
	
	public void setColor(Color color) {
		this.color = color;
	}
	
	public Material getMaterial() {
		return material;
	}
	
	public void setMaterial(Material material) {
		this.material = material;
	}
	
	public int getUnitPrice() {
		return unitPrice;
	}
	
	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}
	
	public int getUnitInStock() {
		return unitInStock;
	}
	
	public void setUnitInStock(int unitInStock) {
		this.unitInStock = unitInStock;
	}
	
	public int getDiscount() {
		return discount;
	}
	
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	
	public Date getDateCreated() {
		return dateCreated;
	}
	
	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}
	
	public Date getLastUpdated() {
		return lastUpdated;
	}
	
	public void setLastUpdated(Date lastUpdated) {
		this.lastUpdated = lastUpdated;
	}
	
	public boolean isActive() {
		return active;
	}
	
	public void setActive(boolean active) {
		this.active = active;
	}
}
