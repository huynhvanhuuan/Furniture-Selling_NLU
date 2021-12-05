package vn.edu.hcmuaf.fit.dao;

import java.util.List;

public interface IGeneralDAO<T> {
    List<T> getList();
    T get(int id);
    void save(T item);
    void delete(int id);
}
