package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;

public class Trademark implements Serializable {
    private int id;
    private String name;
    private String address;
    private String website;

    public Trademark() {
    }

    public Trademark(int id, String name, String address, String website) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.website = website;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }
}
