package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.dao.WishlistDAO;
import vn.edu.hcmuaf.fit.dao.WishlistDAOImpl;
import vn.edu.hcmuaf.fit.helper.DbManager;
import vn.edu.hcmuaf.fit.model.User;
import vn.edu.hcmuaf.fit.model.Wishlist;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

public class WishlistServiceImpl implements WishlistService {
    private final WishlistDAO wishlistDAO;

    public WishlistServiceImpl() {
        this.wishlistDAO = new WishlistDAOImpl(DbManager.connectionPool);
    }

    @Override
    public List<Wishlist> getList(User user) throws SQLException, ParseException {
        return wishlistDAO.getList(user);
    }

    @Override
    public void addToWishlist(Wishlist item) throws SQLException {
        wishlistDAO.addToWishlist(item);
    }

    @Override
    public void removeFromWishlist(Wishlist item) throws SQLException {
        wishlistDAO.removeFromWishlist(item);
    }

    @Override
    public void removeAllFromWishlist(String userId) throws SQLException {
        wishlistDAO.removeAllFromWishlist(userId);
    }
}
