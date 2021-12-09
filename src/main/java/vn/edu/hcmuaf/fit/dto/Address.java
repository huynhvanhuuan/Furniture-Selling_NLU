package vn.edu.hcmuaf.fit.dto;

import vn.edu.hcmuaf.fit.model.District;
import vn.edu.hcmuaf.fit.model.Province;
import vn.edu.hcmuaf.fit.model.Ward;

import java.io.Serializable;

public class Address implements Serializable {
    private int id;
    private String number;
    private String street;
    private Ward ward;
    private String path;

    public Address() {
    }

    public Address(int id, String number, String street, Ward ward, String path) {
        this.id = id;
        this.number = number;
        this.street = street;
        this.ward = ward;
        this.path = path;
    }

    public Address(int id, String number, String street, Ward ward) {
        this.id = id;
        this.number = number;
        this.street = street;
        this.ward = ward;
        District district = ward.getDistrict();
        Province province = district.getProvince();
        this.path = number + ", " + street + ", " + ward.getName() + ", " + district.getName() + ", " + province.getName();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public Ward getWard() {
        return ward;
    }

    public void setWard(Ward ward) {
        this.ward = ward;
    }

    public String getPath() {
        return path;
    }
}
