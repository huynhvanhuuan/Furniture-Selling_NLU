package vn.edu.hcmuaf.fit.dto.checkout;

import vn.edu.hcmuaf.fit.model.Address;
import vn.edu.hcmuaf.fit.model.Order;
import vn.edu.hcmuaf.fit.model.OrderItem;
import vn.edu.hcmuaf.fit.model.User;

import java.util.List;

public class Checkout {
	private User user;
	private Address address;
	private Order order;
	private List<OrderItem> orderItems;
	
	public Checkout(User user, Address address, Order order, List<OrderItem> orderItems) {
		this.user = user;
		this.address = address;
		this.order = order;
		this.orderItems = orderItems;
	}
	
	public User getUser() {
		return user;
	}
	
	public void setUser(User user) {
		this.user = user;
	}
	
	public Address getAddress() {
		return address;
	}
	
	public void setAddress(Address address) {
		this.address = address;
	}
	
	public Order getOrder() {
		return order;
	}
	
	public void setOrder(Order order) {
		this.order = order;
	}
	
	public List<OrderItem> getOrderItems() {
		return orderItems;
	}
	
	public void setOrderItems(List<OrderItem> orderItems) {
		this.orderItems = orderItems;
	}
}
