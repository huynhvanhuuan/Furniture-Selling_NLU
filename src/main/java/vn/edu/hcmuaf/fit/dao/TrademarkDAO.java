package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.DbContext;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.model.Trademark;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TrademarkDAO implements IGeneralDAO<Trademark> {
    private DbContext context;

    public TrademarkDAO(DbContext context) {
        this.context = context;
    }

    @Override
    public List<Trademark> getList() {
        List<Trademark> trademarks = new ArrayList<>();
        ResultSet rs = context.executeQuery(QUERY.TRADEMARK.GET_LIST);
        try {
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String address = rs.getString("address");
                String website = rs.getString("website");
                Trademark trademark = new Trademark(id, name, address, website);
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

    @Override
    public boolean save(Trademark item) {
        return false;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }
}
