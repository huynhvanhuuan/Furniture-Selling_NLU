package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.DbContext;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.model.District;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DistrictDAO implements IGeneralDAO<District> {
    private DbContext context;
    private ProvinceDAO provinceDAO;

    public DistrictDAO(DbContext context) {
        this.context = context;
        provinceDAO = new ProvinceDAO(context);
    }

    @Override
    public List<District> getList() {
        return null;
    }

    public List<District> getListByProvinceId(int provinceId) {
        List<District> districts = new ArrayList<>();
        ResultSet rs = context.executeQuery(String.format(QUERY.DISTRICT.GET_LIST_BY_PROVINCE_ID, provinceId));
        try {
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String prefix = rs.getString("prefix");
                District district = new District(id, name, prefix, provinceDAO.get(provinceId));
                districts.add(district);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return districts;
        }
        return districts;
    }

    @Override
    public District get(int id) {
        District district = null;
        ResultSet rs = context.executeQuery(String.format(QUERY.DISTRICT.GET_ITEM_BY_ID, id));
        try {
            if (!rs.isBeforeFirst() && rs.getRow() == 0) {
                return null;
            }
            if (rs.next()) {
                String name = rs.getString("name");
                String prefix = rs.getString("prefix");
                int provinceId = rs.getInt("province_id");
                district = new District(id, name, prefix, provinceDAO.get(provinceId));
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return district;
    }

    @Override
    public boolean save(District item) {
        return false;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }
}
