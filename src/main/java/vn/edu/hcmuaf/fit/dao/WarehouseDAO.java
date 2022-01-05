package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.dto.product.Color;
import vn.edu.hcmuaf.fit.dto.product.Material;
import vn.edu.hcmuaf.fit.dto.product.ProductDetail;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

public interface WarehouseDAO {
	List<ProductDetail> getProductList() throws SQLException, ParseException;
	List<Color> getColorList() throws SQLException;
	List<Material> getMaterialList() throws SQLException;
	ProductDetail getProduct(String sku) throws SQLException, ParseException;
	Color getColor(int id) throws SQLException;
	Material getMaterial(String sku) throws SQLException;
	void create(ProductDetail item) throws SQLException;
	void update(ProductDetail item) throws SQLException;
	void delete(String sku) throws SQLException;
	void changeActive(String sku) throws SQLException;
}
