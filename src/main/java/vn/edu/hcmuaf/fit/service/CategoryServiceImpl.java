package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.dao.CategoryDAO;
import vn.edu.hcmuaf.fit.dao.CategoryDAOImpl;
import vn.edu.hcmuaf.fit.helper.DbManager;
import vn.edu.hcmuaf.fit.model.Category;

import java.sql.SQLException;
import java.util.List;

public class CategoryServiceImpl implements CategoryService {
	private final CategoryDAO categoryDAO;
	
	public CategoryServiceImpl() {
		this.categoryDAO = new CategoryDAOImpl(DbManager.connectionPool);
	}
	
	@Override
	public List<Category> getList() throws SQLException {
		return categoryDAO.getList();
	}
	
	@Override
	public Category get(String sku) throws SQLException {
		return categoryDAO.get(sku);
	}
	
	@Override
	public void create(Category category) throws SQLException {
		categoryDAO.create(category);
	}
	
	@Override
	public void update(String sku, Category category) throws SQLException {
		categoryDAO.update(sku, category);
	}
	
	@Override
	public void delete(String sku) throws SQLException {
		categoryDAO.delete(sku);
	}
	
	@Override
	public void changeActive(String sku) throws SQLException {
		categoryDAO.changeActive(sku);
	}
}
