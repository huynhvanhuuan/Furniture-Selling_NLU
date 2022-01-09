package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.dao.TrademarkDAO;
import vn.edu.hcmuaf.fit.dao.TrademarkDAOImpl;
import vn.edu.hcmuaf.fit.helper.DbManager;
import vn.edu.hcmuaf.fit.model.Trademark;

import java.sql.SQLException;
import java.util.List;

public class TrademarkServiceImpl implements TrademarkService {
	private final TrademarkDAO trademarkDAO;
	
	public TrademarkServiceImpl() {
		this.trademarkDAO = new TrademarkDAOImpl(DbManager.connectionPool);
	}
	
	@Override
	public List<Trademark> getList() throws SQLException {
		return trademarkDAO.getList();
	}
	
	@Override
	public Trademark get(int id) throws SQLException {
		return trademarkDAO.get(id);
	}
	
	@Override
	public void create(Trademark trademark) throws SQLException {
		trademarkDAO.create(trademark);
	}
	
	@Override
	public void update(Trademark trademark) throws SQLException {
		trademarkDAO.update(trademark);
	}
	
	@Override
	public void delete(int id) throws SQLException {
		trademarkDAO.delete(id);
	}
	
	@Override
	public void changeActive(int id) throws SQLException {
		trademarkDAO.changeActive(id);
	}
}
