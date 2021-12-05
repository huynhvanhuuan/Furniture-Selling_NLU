package vn.edu.hcmuaf.fit.database;

public class QUERY {
    /* CATEGORY */
    public static class CATEGORY {
        public static final String GET_LIST = "select * from category";
        public static final String CREATE = "insert into category(name) values('%s')";
        public static final String UPDATE = "update category set name = '%s' where id = %d";
    }
}
