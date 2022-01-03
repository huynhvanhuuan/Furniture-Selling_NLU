package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.model.Category;

import java.sql.SQLException;
import java.util.List;

public interface CategoryService {
	List<Category> getList() throws SQLException;
	Category get(String sku) throws SQLException;
	void create(Category item) throws SQLException;
	void update(Category item) throws SQLException;
	void delete(String sku) throws SQLException;
	void changeActive(String sku) throws SQLException;
}
