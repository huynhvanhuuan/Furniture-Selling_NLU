package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.DbContext;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.model.Ward;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class WardDAO implements IGeneralDAO<Ward> {
    private DbContext context;
    private DistrictDAO districtDAO;

    public WardDAO(DbContext context) {
        this.context = context;
        districtDAO = new DistrictDAO(context);
    }

    @Override
    public List<Ward> getList() {
        return null;
    }

    public List<Ward> getListByDistrictId(int districtId) {
        List<Ward> wards = new ArrayList<>();
        ResultSet rs = context.executeQuery(String.format(QUERY.WARD.GET_LIST_BY_DISTRICT_ID, districtId));
        try {
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String prefix = rs.getString("prefix");
                Ward ward = new Ward(id, name, prefix, districtDAO.get(districtId));
                wards.add(ward);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return wards;
        }
        return wards;
    }

    @Override
    public Ward get(int id) {
        Ward ward = null;
        ResultSet rs = context.executeQuery(String.format(QUERY.WARD.GET_ITEM_BY_ID, id));
        try {
            if (!rs.isBeforeFirst() && rs.getRow() == 0) {
                return null;
            }
            if (rs.next()) {
                String name = rs.getString("name");
                String prefix = rs.getString("prefix");
                int districtId = rs.getInt("district_id");
                ward = new Ward(id, name, prefix, districtDAO.get(districtId));
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return ward;
    }

    @Override
    public boolean save(Ward item) {
        return false;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }
}
