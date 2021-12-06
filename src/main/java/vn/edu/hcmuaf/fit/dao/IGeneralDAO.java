package vn.edu.hcmuaf.fit.dao;

import java.util.List;

public interface IGeneralDAO<T> {
    List<T> getList();
    T get(int id);
    boolean save(T item);
    boolean delete(int id);
}
