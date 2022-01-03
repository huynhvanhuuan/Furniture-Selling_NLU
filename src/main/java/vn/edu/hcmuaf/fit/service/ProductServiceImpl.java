package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.dao.ProductDAO;
import vn.edu.hcmuaf.fit.dao.ProductDAOImpl;
import vn.edu.hcmuaf.fit.helper.DbManager;
import vn.edu.hcmuaf.fit.model.Product;

import java.sql.SQLException;
import java.util.List;

public class ProductServiceImpl implements ProductService {
	private final ProductDAO productDAO;
	
	public ProductServiceImpl() {
		this.productDAO = new ProductDAOImpl(DbManager.connectionPool);
	}
	
	@Override
	public List<Product> getList() throws SQLException {
		return productDAO.getList();
	}
	
	@Override
	public Product get(int id) throws SQLException {
		return productDAO.get(id);
	}
	
	@Override
	public void create(Product item) throws SQLException {
		productDAO.create(item);
	}
	
	@Override
	public void update(Product item) throws SQLException {
		productDAO.update(item);
	}
	
	@Override
	public void delete(int id) throws SQLException {
		productDAO.delete(id);
	}
	
	@Override
	public void changeActive(int id) throws SQLException {
		productDAO.changeActive(id);
	}
}
