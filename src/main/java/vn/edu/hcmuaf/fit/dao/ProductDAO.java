package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.DbContext;
import vn.edu.hcmuaf.fit.model.Product;

import java.util.List;

public class ProductDAO implements IGeneralDAO<Product> {
    private DbContext context;

    public ProductDAO(DbContext context) {
        this.context = context;
    }

    @Override
    public List<Product> getList() {
        return null;
//        List<Product> products = new ArrayList<>();
//        ResultSet rs = context.executeQuery(QUERY.CATEGORY.GET_LIST);
//        try {
//            while (rs.next()) {
//                //int id = rs.getInt("id");
//                //String name = rs.getString("name");
//                Product product = new Product();
//                products.add(product);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//            return null;
//        }
//        return products;
    }

    @Override
    public Product get(int id) {
        return null;
    }

    @Override
    public boolean save(Product item) {
        return false;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }
}