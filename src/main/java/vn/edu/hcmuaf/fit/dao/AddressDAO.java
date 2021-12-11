package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.DbContext;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.dto.Address;
import vn.edu.hcmuaf.fit.model.District;
import vn.edu.hcmuaf.fit.model.Ward;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AddressDAO implements IGeneralDAO<Address> {
    private DbContext context;
    private DistrictDAO districtDAO;
    private WardDAO wardDAO;

    public AddressDAO(DbContext context) {
        this.context = context;
        districtDAO = new DistrictDAO(context);
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
                int districtId = rs.getInt("district_id");
                String path = rs.getString("path");
                Address address;
                if (wardId == 0) {
                    address = new Address(id, number, street, null, districtDAO.get(districtId), path);
                } else {
                    Ward ward = wardDAO.get(wardId);
                    address = new Address(id, number, street, ward, ward.getDistrict(), path);
                }
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

    public Address getItemByPath(String path) {
        Address address = null;
        ResultSet rs = context.executeQuery(String.format(QUERY.ADDRESS.GET_ITEM_BY_PATH, path));
        try {
            if (!rs.isBeforeFirst() && rs.getRow() == 0) {
                return null;
            }
            if (rs.next()) {
                int id = rs.getInt("id");
                String number = rs.getString("number");
                String street = rs.getString("street");
                int wardId = rs.getInt("ward_id");
                int districtId = rs.getInt("district_id");
                if (wardId == 0) {
                    District district = districtDAO.get(districtId);
                    address = new Address(id, number, street, null, district, path);
                } else {
                    Ward ward = wardDAO.get(wardId);
                    address = new Address(id, number, street, ward, ward.getDistrict(), path);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return address;
    }

    public int getLastestId() {
        return context.getLastestId("address");
    }

    @Override
    public boolean save(Address item) {
        if (item.getId() == 0) {
            if (item.getWard() == null) {
                return context.executeUpdate(String.format(QUERY.ADDRESS.CREATE,
                        item.getNumber(), item.getStreet(), 0, item.getDistrict().getId(), item.getPath()));
            } else {
                return context.executeUpdate(String.format(QUERY.ADDRESS.CREATE,
                        item.getNumber(), item.getStreet(), item.getWard().getId(), item.getDistrict().getId(), item.getPath()));
            }
        } else {
            return context.executeUpdate(String.format(QUERY.ADDRESS.UPDATE,
                    item.getNumber(), item.getStreet(), item.getWard().getId(), item.getDistrict().getId(), item.getPath(), item.getId()));
        }
    }

    public boolean addAddress(int trademarkId, int addressId) {
        return context.executeUpdate(String.format(QUERY.TRADEMARK_ADDRESS.CREATE, trademarkId, addressId));
    }

    public void removeAllAddress(int trademarkId) {
        List<Integer> addressIds = new ArrayList<>();
        ResultSet rs = context.executeQuery(String.format(QUERY.TRADEMARK_ADDRESS.GET_LIST_ADDRESS_ID_BY_TRADEMARK_ID, trademarkId));
        try {
            while (rs.next()) {
                int addressId = rs.getInt("address_id");
                addressIds.add(addressId);
            }
            context.executeUpdate(String.format(QUERY.TRADEMARK_ADDRESS.DELETE_BY_TRADEMARK_ID, trademarkId));
            for (int addressId : addressIds) {
                delete(addressId);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean removeTrademarkAddress(int id) {
        return context.executeUpdate(String.format(QUERY.TRADEMARK_ADDRESS.DELETE_BY_ADDRESS_ID, id)) && delete(id);
    }

    @Override
    public boolean delete(int id) {
        return context.executeUpdate(String.format(QUERY.ADDRESS.DELETE, id));
    }
}
