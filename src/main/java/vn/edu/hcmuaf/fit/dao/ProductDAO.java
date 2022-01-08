package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.model.Product;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

public interface ProductDAO {
	List<Product> getList() throws SQLException, ParseException;
	Product get(int id) throws SQLException, ParseException;
	void create(Product item) throws SQLException;
	void update(Product item) throws SQLException;
	void delete(int id) throws SQLException;
	void changeActive(int id) throws SQLException;
}
