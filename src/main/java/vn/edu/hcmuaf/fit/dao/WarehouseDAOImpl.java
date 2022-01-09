package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.database.IConnectionPool;
import vn.edu.hcmuaf.fit.database.QUERY;
import vn.edu.hcmuaf.fit.dto.product.Color;
import vn.edu.hcmuaf.fit.dto.product.Material;
import vn.edu.hcmuaf.fit.dto.product.ProductDetail;
import vn.edu.hcmuaf.fit.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class WarehouseDAOImpl implements WarehouseDAO {
	private final IConnectionPool connectionPool;
	private Connection connection;
	private final ProductDAO productDAO;
	
	public WarehouseDAOImpl(IConnectionPool connectionPool) {
		this.connectionPool = connectionPool;
		this.productDAO = new ProductDAOImpl(connectionPool);
	}
	
	@Override
	public List<ProductDetail> getProductList() throws SQLException, ParseException {
		List<ProductDetail> list = new ArrayList<>();
		connection = connectionPool.getConnection();
		ResultSet rs = connection.prepareStatement(QUERY.WAREHOUSE.GET_PRODUCT_LIST).executeQuery();
		while (rs.next()) {
			String sku = rs.getString("sku");
			Product product = productDAO.get(rs.getInt("product_id"));
			String image = rs.getString("image");
			Color color = getColor(rs.getInt("color_id"));
			Material material = getMaterial(rs.getString("material_sku"));
			long unitPrice = rs.getLong("unit_price");
			int unitInStock = rs.getInt("unit_in_stock");
			int discount = rs.getInt("discount");
			Date dateCreated = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(rs.getString("date_created"));
			Date lastUpdated = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(rs.getString("last_updated"));
			boolean active = rs.getBoolean("active");
			ProductDetail productDetail = new ProductDetail(sku, product, image, color, material, unitPrice, unitInStock, discount, dateCreated, lastUpdated, active);
			list.add(productDetail);
		}
		connectionPool.releaseConnection(connection);
		return list;
	}
	
	@Override
	public List<ProductDetail> getProductList(int productId) throws SQLException, ParseException {
		List<ProductDetail> list = new ArrayList<>();
		connection = connectionPool.getConnection();
		ResultSet rs = connection.prepareStatement(QUERY.WAREHOUSE.GET_PRODUCT_LIST).executeQuery();
		while (rs.next()) {
			String sku = rs.getString("sku");
			Product product = productDAO.get(productId);
			String image = rs.getString("image");
			Color color = getColor(rs.getInt("color_id"));
			Material material = getMaterial(rs.getString("material_sku"));
			long unitPrice = rs.getLong("unit_price");
			int unitInStock = rs.getInt("unit_in_stock");
			int discount = rs.getInt("discount");
			Date dateCreated = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(rs.getString("date_created"));
			Date lastUpdated = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(rs.getString("last_updated"));
			boolean active = rs.getBoolean("active");
			ProductDetail productDetail = new ProductDetail(sku, product, image, color, material, unitPrice, unitInStock, discount, dateCreated, lastUpdated, active);
			list.add(productDetail);
		}
		connectionPool.releaseConnection(connection);
		return list;
	}
	
	@Override
	public List<Color> getColorList() throws SQLException {
		List<Color> list = new ArrayList<>();
		connection = connectionPool.getConnection();
		ResultSet rs = connection.prepareStatement(QUERY.WAREHOUSE.GET_COLOR_LIST).executeQuery();
		while (rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("name");
			String hex = rs.getString("hex");
			Color color = new Color(id, name, hex);
			list.add(color);
		}
		connectionPool.releaseConnection(connection);
		return list;
	}
	
	@Override
	public List<Material> getMaterialList() throws SQLException {
		List<Material> list = new ArrayList<>();
		connection = connectionPool.getConnection();
		ResultSet rs = connection.prepareStatement(QUERY.WAREHOUSE.GET_MATERIAL_LIST).executeQuery();
		while (rs.next()) {
			String sku = rs.getString("sku");
			String name = rs.getString("name");
			Material material = new Material(sku, name);
			list.add(material);
		}
		connectionPool.releaseConnection(connection);
		return list;
	}
	
	@Override
	public ProductDetail getProduct(String sku) throws SQLException, ParseException {
		ProductDetail productDetail = null;
		connection = connectionPool.getConnection();
		PreparedStatement statement = connection.prepareStatement(QUERY.WAREHOUSE.GET_COLOR);
		statement.setString(1, sku);
		ResultSet rs = statement.executeQuery();
		if (!rs.isBeforeFirst() && rs.getRow() == 0) {
			return null;
		}
		if (rs.next()) {
			Product product = productDAO.get(rs.getInt("product_id"));
			String image = rs.getString("image");
			Color color = getColor(rs.getInt("color_id"));
			Material material = getMaterial(rs.getString("material_sku"));
			long unitPrice = rs.getLong("unit_price");
			int unitInStock = rs.getInt("unit_in_stock");
			int discount = rs.getInt("discount");
			Date dateCreated = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(rs.getString("date_created"));
			Date lastUpdated = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(rs.getString("last_updated"));
			boolean active = rs.getBoolean("active");
			productDetail = new ProductDetail(sku, product, image, color, material, unitPrice, unitInStock, discount, dateCreated, lastUpdated, active);
		}
		connectionPool.releaseConnection(connection);
		return productDetail;
	}
	
	@Override
	public Color getColor(int id) throws SQLException {
		Color color = null;
		connection = connectionPool.getConnection();
		PreparedStatement statement = connection.prepareStatement(QUERY.WAREHOUSE.GET_COLOR);
		statement.setInt(1, id);
		ResultSet rs = statement.executeQuery();
		if (!rs.isBeforeFirst() && rs.getRow() == 0) {
			return null;
		}
		if (rs.next()) {
			String name = rs.getString("name");
			String hex = rs.getString("hex");
			color = new Color(id, name, hex);
		}
		connectionPool.releaseConnection(connection);
		return color;
	}
	
	@Override
	public Material getMaterial(String sku) throws SQLException {
		Material material = null;
		connection = connectionPool.getConnection();
		PreparedStatement statement = connection.prepareStatement(QUERY.WAREHOUSE.GET_MATERIAL);
		statement.setString(1, sku);
		ResultSet rs = statement.executeQuery();
		if (!rs.isBeforeFirst() && rs.getRow() == 0) {
			return null;
		}
		if (rs.next()) {
			String name = rs.getString("name");
			material = new Material(sku, name);
		}
		connectionPool.releaseConnection(connection);
		return material;
	}
	
	@Override
	public void create(ProductDetail item) throws SQLException {
		connection = connectionPool.getConnection();
		PreparedStatement statement = connection.prepareStatement(QUERY.WAREHOUSE.GET_MATERIAL);
		statement.setString(1, item.getSku());
		statement.setInt(2, item.getProduct().getId());
		statement.setString(3, item.getImage());
		statement.setInt(4, item.getColor().getId());
		statement.setString(5, item.getMaterial().getSku());
		statement.setLong(6, item.getUnitPrice());
		statement.setInt(7, item.getUnitInStock());
		statement.setInt(8, item.getDiscount());
		statement.executeUpdate();
		connectionPool.releaseConnection(connection);
	}
	
	@Override
	public void update(ProductDetail item) throws SQLException {
		connection = connectionPool.getConnection();
		PreparedStatement statement = connection.prepareStatement(QUERY.WAREHOUSE.UPDATE);
		statement.setString(1, item.getSku());
		statement.setInt(2, item.getProduct().getId());
		statement.setString(3, item.getImage());
		statement.setInt(4, item.getColor().getId());
		statement.setString(5, item.getMaterial().getSku());
		statement.setLong(6, item.getUnitPrice());
		statement.setInt(7, item.getUnitInStock());
		statement.setInt(8, item.getDiscount());		statement.setString(1, item.getSku());
		statement.setString(9, item.getSku());
		statement.setString(10, new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(item.getDateCreated()));
		statement.executeUpdate();
		connectionPool.releaseConnection(connection);
	}
	
	@Override
	public void delete(String sku) throws SQLException {
		connection = connectionPool.getConnection();
		PreparedStatement statement = connection.prepareStatement(QUERY.WAREHOUSE.DELETE);
		statement.setString(1, sku);
		statement.executeUpdate();
		connectionPool.releaseConnection(connection);
	}
	
	@Override
	public void changeActive(String sku) throws SQLException {
		connection = connectionPool.getConnection();
		PreparedStatement statement = connection.prepareStatement(QUERY.WAREHOUSE.CHANGE_ACTIVE);
		statement.setString(1, sku);
		statement.executeUpdate();
		connectionPool.releaseConnection(connection);
	}
}
