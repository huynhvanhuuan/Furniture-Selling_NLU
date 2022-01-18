package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.dto.order.OrderItem;
import vn.edu.hcmuaf.fit.model.Order;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

public interface OrderDAO {
    List<Order> getListByUserId(String userId) throws SQLException, ParseException;
    List<OrderItem> getListDetail(String orderId) throws SQLException, ParseException;
}
