package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.DbContext;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.model.Category;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO implements IGeneralDAO<Category> {
    private DbContext context;

    public CategoryDAO(DbContext context) {
        this.context = context;
    }

    @Override
    public List<Category> getList() {
        List<Category> categories = new ArrayList<>();
        ResultSet rs = context.executeQuery(QUERY.CATEGORY.GET_LIST);
        try {
            while (rs.next()) {
                int id = rs.getInt("id");
                String sku = rs.getString("sku");
                String name = rs.getString("name");
                Category category = new Category(id, sku, name);
                categories.add(category);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return categories;
        }
        return categories;
    }

    @Override
    public Category get(int id) {
        Category category = null;
        ResultSet rs = context.executeQuery(String.format(QUERY.CATEGORY.GET_ITEM_BY_ID, id));
        try {
            if (!rs.isBeforeFirst() && rs.getRow() == 0) {
                return null;
            }
            if (rs.next()) {
                String sku = rs.getString("sku");
                String name = rs.getString("name");
                category = new Category(id, sku, name);
                category.setSku(sku);
                category.setName(name);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return category;
    }

    @Override
    public boolean save(Category item) {
        if (item.getId() == 0) {
            return context.executeUpdate(String.format(QUERY.CATEGORY.CREATE, item.getName()));
        } else {
            return context.executeUpdate(String.format(QUERY.CATEGORY.UPDATE, item.getName(), item.getId()));
        }
    }

    @Override
    public boolean delete(int id) {
        return context.executeUpdate(String.format(QUERY.CATEGORY.DELETE, id));
    }

    public boolean exists(String name) {
        ResultSet rs = context.executeQuery(String.format(QUERY.CATEGORY.GET_ITEM_BY_NAME, name));

        return false;
    }
}
