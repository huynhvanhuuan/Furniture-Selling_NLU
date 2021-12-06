package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;

public class Category implements Serializable {
    private int id;
    private String sku;
    private String name;

    public Category() {
    }

    public Category(int id, String sku, String name) {
        this.id = id;
        this.sku = sku;
        this.name = name;
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
}
