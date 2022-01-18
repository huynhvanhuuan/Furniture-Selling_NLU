package vn.edu.hcmuaf.fit.dto.product;

import java.io.Serializable;

public class Size implements Serializable {
    private int id;
    private String sku;
    private String type;
    private String length;
    private String width;
    private String height;
    private String detail;

    public Size() {
    }

    public Size(int id, String sku, String type, String length, String width, String height, String detail) {
        this.id = id;
        this.sku = sku;
        this.type = type;
        this.length = length;
        this.width = width;
        this.height = height;
        this.detail = detail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSku() {
        return sku;
    }

    public void setSku(String sku) {
        this.sku = sku;
    }

    public String getLength() {
        return length;
    }

    public void setLength(String length) {
        this.length = length;
    }

    public String getWidth() {
        return width;
    }

    public void setWidth(String width) {
        this.width = width;
    }

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }
}
