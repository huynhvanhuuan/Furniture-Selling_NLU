package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.dto.wishlist.Wishlist;
import vn.edu.hcmuaf.fit.model.User;

import java.sql.SQLException;
import java.text.ParseException;

public interface WishlistService {
    Wishlist getList(User user) throws SQLException, ParseException;
    void add(String userId, String productSku) throws SQLException;
    void remove(String userId, String productSku) throws SQLException;
    void removeAll(String userId) throws SQLException;
}
