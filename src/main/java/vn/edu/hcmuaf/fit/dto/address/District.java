package vn.edu.hcmuaf.fit.dto.address;

import java.io.Serializable;
import java.util.List;

public class District implements Serializable {
    private int id;
    private String name;
    private String prefix;
    private Province province;
    private List<Ward> wards;

    public District() {
    }

    public District(int id, String name, String prefix, Province province, List<Ward> wards) {
        this.id = id;
        this.name = name;
        this.prefix = prefix;
        this.province = province;
        this.wards = wards;
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

    public String getPrefix() {
        return prefix;
    }

    public void setPrefix(String prefix) {
        this.prefix = prefix;
    }

    public Province getProvince() {
        return province;
    }

    public void setProvince(Province province) {
        this.province = province;
    }
    
    public List<Ward> getWards() {
        return wards;
    }
    
    public void setWards(List<Ward> wards) {
        this.wards = wards;
    }
}
