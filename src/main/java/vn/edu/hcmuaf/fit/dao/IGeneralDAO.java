package vn.edu.hcmuaf.fit.dao;

import java.sql.SQLException;
import java.util.List;

public interface IGeneralDAO<T> {
    List<T> getList() throws SQLException;
    T get(int id) throws SQLException;
    boolean save(T item) throws SQLException;
    boolean delete(int id) throws SQLException;
}
