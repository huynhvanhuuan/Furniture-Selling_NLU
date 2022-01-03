package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.IConnectionPool;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.model.ProductDetail;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class WarehouseDAOImpl implements WarehouseDAO {
	private final IConnectionPool connectionPool;
	private Connection connection;
	
	public WarehouseDAOImpl(IConnectionPool connectionPool) {
		this.connectionPool = connectionPool;
	}
	
	@Override
	public List<ProductDetail> getList() throws SQLException {
		List<ProductDetail> list = new ArrayList<>();
		connection = connectionPool.getConnection();
		ResultSet rs = connection.prepareStatement(QUERY.WAREHOUSE.GET_LIST).executeQuery();
		return list;
	}
	
	@Override
	public ProductDetail get(String sku) throws SQLException {
		return null;
	}
	
	@Override
	public void create(ProductDetail item) throws SQLException {
		
	}
	
	@Override
	public void update(ProductDetail item) throws SQLException {
		
	}
	
	@Override
	public void delete(String sku) throws SQLException {
		
	}
	
	@Override
	public void changeActive(String sku) throws SQLException {
		
	}
}
