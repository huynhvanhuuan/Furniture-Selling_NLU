package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.model.User;
import vn.edu.hcmuaf.fit.model.Wishlist;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

public interface WishlistDAO {
    List<Wishlist> getList(User user) throws SQLException, ParseException;
    void addToWishlist(Wishlist item) throws SQLException;
    void removeFromWishlist(Wishlist item) throws SQLException;
    void removeAllFromWishlist(String userId) throws SQLException;
}
