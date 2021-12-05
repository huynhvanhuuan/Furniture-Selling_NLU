package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class Product implements Serializable {
    private int id;
    private String sku;
    private String name;
    private String description;
    private String imageUrl;
    private Material material;
    private Size size;
    private Category category;;
    private Trademark trademark;
    private int unitPrice;
    private int unitInStrock;
    private Date dateCreated;
    private Date lastUpdated;
    private boolean active;

    public Product() {
    }

    public Product(int id, String sku, String name, String description, String imageUrl, Material material, Size size, Category category,
                   Trademark trademark, int unitPrice, int unitInStrock, Date dateCreated, Date lastUpdated, boolean active) {
        this.id = id;
        this.sku = sku;
        this.name = name;
        this.description = description;
        this.imageUrl = imageUrl;
        this.material = material;
        this.size = size;
        this.category = category;
        this.trademark = trademark;
        this.unitPrice = unitPrice;
        this.unitInStrock = unitInStrock;
        this.dateCreated = dateCreated;
        this.lastUpdated = lastUpdated;
        this.active = active;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSku() {
        return sku;
    }

    public void setSku(String sku) {
        this.sku = sku;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public Material getMaterial() {
        return material;
    }

    public void setMaterial(Material material) {
        this.material = material;
    }

    public Size getSize() {
        return size;
    }

    public void setSize(Size size) {
        this.size = size;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Trademark getTrademark() {
        return trademark;
    }

    public void setTrademark(Trademark trademark) {
        this.trademark = trademark;
    }

    public int getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(int unitPrice) {
        this.unitPrice = unitPrice;
    }

    public int getUnitInStrock() {
        return unitInStrock;
    }

    public void setUnitInStrock(int unitInStrock) {
        this.unitInStrock = unitInStrock;
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
