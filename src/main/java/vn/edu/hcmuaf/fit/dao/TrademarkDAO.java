package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.DbContext;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.dto.Address;
import vn.edu.hcmuaf.fit.model.Trademark;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TrademarkDAO implements IGeneralDAO<Trademark> {
    private DbContext context;
    private AddressDAO addressDAO;

    public TrademarkDAO(DbContext context) {
        this.context = context;
        addressDAO = new AddressDAO(context);
    }

    @Override
    public List<Trademark> getList() {
        List<Trademark> trademarks = new ArrayList<>();
        ResultSet rs = context.executeQuery(QUERY.TRADEMARK.GET_LIST);
        try {
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String website = rs.getString("website");
                List<Address> addresses = addressDAO.getListByTrademarkId(id);
                Trademark trademark = new Trademark(id, name, website, addresses);
                trademarks.add(trademark);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return trademarks;
        }
        return trademarks;
    }

    @Override
    public Trademark get(int id) {
        return null;
    }

    public int getLastestId() {
        return context.getLastestId("trademark");
    }

    @Override
    public boolean save(Trademark item) {
        if (item.getId() == 0) {
            return context.executeUpdate(String.format(QUERY.TRADEMARK.CREATE, item.getName(), item.getWebsite()));
        } else {
            return context.executeUpdate(String.format(QUERY.TRADEMARK.UPDATE, item.getName(), item.getWebsite(), item.getId()));
        }
    }

    public boolean addAddress(int idTrademark, int idAddress) {
        return context.executeUpdate(String.format(QUERY.TRADEMARK_ADDRESS.CREATE, idTrademark, idAddress));
    }

    @Override
    public boolean delete(int id) {
        return context.executeUpdate(String.format(QUERY.TRADEMARK.DELETE, id));
    }
}
