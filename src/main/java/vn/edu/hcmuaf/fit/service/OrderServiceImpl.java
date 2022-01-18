package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.dao.OrderDAO;
import vn.edu.hcmuaf.fit.dao.OrderDAOImpl;
import vn.edu.hcmuaf.fit.dto.order.OrderItem;
import vn.edu.hcmuaf.fit.helper.DbManager;
import vn.edu.hcmuaf.fit.model.Order;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

public class OrderServiceImpl implements OrderService{
    private final OrderDAO orderDAO;

    public OrderServiceImpl() {
        this.orderDAO = new OrderDAOImpl(DbManager.connectionPool);
    }

    @Override
    public List<Order> getListByUserId(String userId) throws SQLException, ParseException {
        return orderDAO.getListByUserId(userId);
    }

    @Override
    public List<OrderItem> getListDetail(int orderId) throws SQLException, ParseException {
        return orderDAO.getListDetail("" + orderId);
    }
}
