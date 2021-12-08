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
    public static class TRADEMARK {
        public static final String GET_LIST = "select * from trademark";
        public static final String GET_ITEM_BY_ID = "select * from trademark where id = %d";
        public static final String GET_ITEM_BY_NAME = "select * from trademark where name = N'%s'";
        public static final String CREATE = "insert into trademark(name, address, website) values(N'%s', N'%s', %s)";
        public static final String UPDATE = "update trademark set name = N'%s', address = N'%s', website = %s where id = %d";
        public static final String DELETE = "delete from trademark where id = %d";
    }

    /* PRODUCT */


    /* PROVINCE */
    public static class PROVINCE {
        public static final String GET_LIST = "select * from province";
        public static final String GET_ITEM_BY_ID = "select * from province where id = %d";
        public static final String GET_ID_BY_NAME = "select id from province where name = N'%s'";
    }

    /* DISTRICT */
    public static class DISTRICT {
        public static final String GET_LIST_BY_PROVINCE_ID = "select * from district where province_id = %d";
        public static final String GET_ITEM_BY_ID = "select * from district where id = %d";
        public static final String GET_ID_BY_NAME = "select id from district where name = N'%s'";
    }

    /* WARD */
    public static class WARD {
        public static final String GET_LIST_BY_DISTRICT_ID = "select * from ward where district_id = %d";
        public static final String GET_ITEM_BY_ID = "select * from category where id = %d";
    }
}
