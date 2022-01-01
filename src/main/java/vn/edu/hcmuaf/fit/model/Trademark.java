package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.List;

public class Trademark implements Serializable {
    private int id;
    private String name;
    private String website;
    private List<Address> addresses;

    public Trademark() {
    }

    public Trademark(int id, String name, String website) {
        this.id = id;
        this.name = name;
        this.website = website;
    }

    public Trademark(int id, String name, String website, List<Address> addresses) {
        this.id = id;
        this.name = name;
        this.website = website;
        this.addresses = addresses;
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

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public List<Address> getAddresses() {
        return addresses;
    }

    public void setAddresses(List<Address> addresses) {
        this.addresses = addresses;
    }
}
