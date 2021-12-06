package vn.edu.hcmuaf.fit.database;

public class QUERY {
    /* CATEGORY */
    public static class CATEGORY {
        public static final String GET_LIST = "select * from category";
        public static final String GET_ITEM_BY_ID = "select * from category where id = %d";
        public static final String GET_ITEM_BY_NAME = "select * from category where name = N'%s'";
        public static final String CREATE = "insert into category(name) values(N'%s')";
        public static final String UPDATE = "update category set name = N'%s' where id = %d";
        public static final String DELETE = "delete from category where id = %d";
    }
    /* MATERIAL */
    /* SIZE */
    /* TRADEMARK */
    /* PRODUCT */
}
