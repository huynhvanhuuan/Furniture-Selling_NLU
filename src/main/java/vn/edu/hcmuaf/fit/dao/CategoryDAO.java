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
//        List<Category> categories = new ArrayList<>();
//        ResultSet rs = context.executeQuery(QUERY.CATEGORY.GET_LIST);
//        try {
//            while (rs.next()) {
//                int id = rs.getInt("id");
//                String name = rs.getString("name");
//                Category category = new Category(id, name);
//                categories.add(category);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//            return null;
//        }
//        return categories;
        return null;
    }

    @Override
    public Category get(int id) {
        return null;
    }

    @Override
    public void save(Category item) {

    }

    @Override
    public void delete(int id) {

    }
}
