package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class ProductDetail implements Serializable {
    private String sku;
    private int productId;
    private String size;
    private String color;
    private String material;
    private int unitPrice;
    private int unitInStock;
    private int discount;
    private Date dateCreated;
    private Date lastUpdated;
    private boolean active;

    public ProductDetail() {
    }

    public ProductDetail(String sku, int productId, String size, String color, String material, int unitPrice, int unitInStock, int discount, Date dateCreated, Date lastUpdated, boolean active) {
        this.sku = sku;
        this.productId = productId;
        this.size = size;
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

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
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
