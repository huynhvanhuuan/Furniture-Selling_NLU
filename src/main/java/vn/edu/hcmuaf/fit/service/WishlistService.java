package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.model.User;
import vn.edu.hcmuaf.fit.model.Wishlist;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

public interface WishlistService {
    List<Wishlist> getList(User user) throws SQLException, ParseException;
    void addToWishlist(Wishlist item) throws SQLException;
    void removeFromWishlist(Wishlist item) throws SQLException;
    void removeAllFromWishlist(String userId) throws SQLException;
}
