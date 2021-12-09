package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.DbContext;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.dto.Address;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AddressDAO implements IGeneralDAO<Address> {
    private DbContext context;
    private WardDAO wardDAO;

    public AddressDAO(DbContext context) {
        this.context = context;
        wardDAO = new WardDAO(context);
    }

    @Override
    public List<Address> getList() {
        return null;
    }

    public List<Address> getListByTrademarkId(int trademarkId) {
        List<Address> addresses = new ArrayList<>();
        ResultSet rs = context.executeQuery(String.format(QUERY.ADDRESS.GET_LIST_BY_TRADEMARK_ID, trademarkId));
        try {
            while (rs.next()) {
                int id = rs.getInt("id");
                String number = rs.getString("number");
                String street = rs.getString("street");
                int wardId = rs.getInt("ward_id");
                String path = rs.getString("path");
                Address address = new Address(id, number, street, wardDAO.get(wardId), path);
                addresses.add(address);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return addresses;
        }
        return addresses;
    }

    @Override
    public Address get(int id) {
        return null;
    }

    public int getLastestId() {
        return context.getLastestId("address");
    }

    @Override
    public boolean save(Address item) {
        if (item.getId() == 0) {
            return context. executeUpdate(String.format(QUERY.ADDRESS.CREATE,
                    item.getNumber(), item.getStreet(), item.getWard().getId(), item.getPath()));
        } else {
            return context.executeUpdate(String.format(QUERY.ADDRESS.UPDATE,
                    item.getNumber(), item.getStreet(), item.getWard().getId(), item.getPath(), item.getId()));
        }
    }

    @Override
    public boolean delete(int id) {
        return false;
    }
}
