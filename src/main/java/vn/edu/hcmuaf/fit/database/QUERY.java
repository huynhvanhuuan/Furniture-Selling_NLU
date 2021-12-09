package vn.edu.hcmuaf.fit.database;

public class QUERY {

    /* PRODUCT */


    /* CATEGORY */
    public static class CATEGORY {
        public static final String GET_LIST = "select * from category";
        public static final String GET_ITEM_BY_ID = "select * from category where id = %d";
        public static final String GET_ITEM_BY_NAME = "select * from category where name = N'%s'";
        public static final String CREATE = "insert into category(sku, name) values('%s', N'%s')";
        public static final String UPDATE = "update category set sku = '%s', name = N'%s' where id = %d";
        public static final String DELETE = "delete from category where id = %d";
    }

    /* MATERIAL */


    /* SIZE */


    /* TRADEMARK */
    public static class TRADEMARK {
        public static final String GET_LIST = "select * from trademark";
        public static final String GET_ITEM_BY_ID = "select * from trademark where id = %d";
        public static final String GET_ITEM_BY_NAME = "select * from trademark where name = N'%s'";
        public static final String CREATE = "insert into trademark(name, website) values(N'%s', '%s')";
        public static final String UPDATE = "update trademark set name = N'%s', website = '%s' where id = %d";
        public static final String DELETE = "delete from trademark where id = %d";
    }

    /* TRADEMARK - ADDRESS */
    public static class TRADEMARK_ADDRESS {
        public static final String CREATE = "insert into trademark_address(trademark_id, address_id) values(%d, %d)";
    }

    /* USER */


    /* USER - ADDRESS */
    public static class USER_ADDRESS {
        public static final String CREATE = "insert into user_address(user_id, address_id) values(%d, %d)";
    }

    /* ADDRESS */
    public static class ADDRESS {
        public static final String GET_LIST_BY_TRADEMARK_ID = "select a.* " +
                "from address a inner join trademark_address ta " +
                "on a.id = ta.address_id where trademark_id = %d";
        public static final String GET_LIST_BY_USER_ID = "select a " +
                "from address a inner join user_address ua " +
                "on a.id = ua.address_id where user_id = %d";
        public static final String CREATE = "insert into address(number, street, ward_id, path) values(N'%s', N'%s', %d, N'%s')";
        public static final String UPDATE = "update address set number = N'%s', street = N'%s', ward_id = %d, path = N'%s' where id = %d";
        public static final String DELETE = "";
    }

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
        public static final String GET_ITEM_BY_ID = "select * from ward where id = %d";
    }
}
