package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.model.Category;

import java.sql.SQLException;
import java.util.List;

public interface CategoryService {
	List<Category> getList() throws SQLException;
	Category get(String sku) throws SQLException;
	void create(Category category) throws SQLException;
	void update(String sku, Category category) throws SQLException;
	void delete(String sku) throws SQLException;
	void changeActive(String sku) throws SQLException;
}