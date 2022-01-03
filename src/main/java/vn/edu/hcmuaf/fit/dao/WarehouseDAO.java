package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.model.ProductDetail;

import java.sql.SQLException;
import java.util.List;

public interface WarehouseDAO {
	List<ProductDetail> getList() throws SQLException;
	ProductDetail get(String sku) throws SQLException;
	void create(ProductDetail item) throws SQLException;
	void update(ProductDetail item) throws SQLException;
	void delete(String sku) throws SQLException;
	void changeActive(String sku) throws SQLException;
}
