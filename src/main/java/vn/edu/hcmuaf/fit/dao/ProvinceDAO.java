package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.DbContext;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.model.Province;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProvinceDAO implements IGeneralDAO<Province> {
    private DbContext context;

    public ProvinceDAO(DbContext context) {
        this.context = context;
    }

    @Override
    public List<Province> getList() {
        List<Province> provinces = new ArrayList<>();
        ResultSet rs = context.executeQuery(QUERY.PROVINCE.GET_LIST);
        try {
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String prefix = rs.getString("prefix");
                Province province = new Province(id, name, prefix);
                provinces.add(province);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return provinces;
        }
        return provinces;
    }

    @Override
    public Province get(int id) {
        Province province = null;
        ResultSet rs = context.executeQuery(String.format(QUERY.PROVINCE.GET_ITEM_BY_ID, id));
        try {
            if (!rs.isBeforeFirst() && rs.getRow() == 0) {
                return null;
            }
            if (rs.next()) {
                String name = rs.getString("name");
                String prefix = rs.getString("prefix");
                province = new Province(id, name, prefix);
                province.setName(name);
                province.setPrefix(prefix);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return province;
    }

    @Override
    public boolean save(Province item) {
        return false;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }
}
