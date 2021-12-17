package vn.edu.hcmuaf.fit.database;

public class QUERY {

    /* PRODUCT */
    public static class PRODUCT {
        public static final String GET_LIST = "select * from product";
        public static final String GET_ITEM_BY_ID = "select * from product where id = ?";
        public static final String GET_LAST_ITEM = "select * from product order by id desc limit 1";
        public static final String CREATE = "insert into product(name, description, trademark_id, category_id, date_created, last_updated, active) " +
                "values(?, ?, ?, ?, now(), now(), 1)";
        public static final String UPDATE = "update product set name = ?, description = ?, trademark_id = ?, category_id = ?, active = ? where id = ?";
        public static final String DELETE = "delete from product where id = ?";
    }

    /* PRODUCT IMAGE */

    /* WAREHOUSE */

    /* CATEGORY */
    public static class CATEGORY {
        public static final String GET_LIST = "select * from category";
        public static final String GET_ITEM_BY_ID = "select * from category where id = ?";
        public static final String GET_ITEM_BY_NAME = "select * from category where name = ?";
        public static final String CREATE = "insert into category(sku, name) values(?, ?)";
        public static final String UPDATE = "update category set sku = ?, name = ? where id = ?";
        public static final String DELETE = "delete from category where id = ?";
    }

    /* TRADEMARK */
    public static class TRADEMARK {
        public static final String GET_LIST = "select * from trademark";
        public static final String GET_ITEM_BY_ID = "select * from trademark where id = ?";
        public static final String GET_ITEM_BY_NAME = "select * from trademark where name like ?";
        public static final String CREATE = "insert into trademark(name, website) values(?, ?)";
        public static final String UPDATE = "update trademark set name = ?, website = ? where id = ?";
        public static final String DELETE = "delete from trademark where id = ?";
    }

    /* USER */
    public static class USER {
        public static final String GET_LIST = "select * from user";
    }

    /* ADDRESS */
    public static class ADDRESS {
        public static final String GET_LIST_BY_TRADEMARK_ID = "select a.* from address a inner join trademark_address ta on a.id = ta.address_id where trademark_id = ?";
        public static final String GET_LIST_BY_USER_ID = "select a from address a inner join user_address ua on a.id = ua.address_id where user_id = ?";
        public static final String GET_ITEM_BY_ID = "select * from address where id = ?";
        public static final String GET_ITEM_BY_PATH = "select * from address where path like ?";
        public static final String CREATE = "insert into address(number, street, ward_id, district_id, path) values(?, ?, ?, ?, ?)";
        public static final String UPDATE = "update address set number = ?, street = ?, ward_id = ?, district_id = ?, path = ? where id = ?";
        public static final String DELETE = "delete from address where id = ?";
        public static final String GET_LAST_ID = "select id from address order by id desc limit 1";
    }

    /* TRADEMARK - ADDRESS */
    public static class TRADEMARK_ADDRESS {
        public static final String CREATE = "insert into trademark_address(trademark_id, address_id) values(?, ?)";
        public static final String GET_LIST_BY_TRADEMARK_ID = "select * from trademark_address where trademark_id = ?";
        public static final String DELETE_BY_TRADEMARK_ID = "delete from trademark_address where trademark_id = ?";
        public static final String DELETE_BY_ADDRESS_ID = "delete from trademark_address where address_id = ?";
    }

    /* USER - ADDRESS */
    public static class USER_ADDRESS {
        public static final String CREATE = "insert into user_address(user_id, address_id) values(?, ?)";
    }

    /* PROVINCE */
    public static class PROVINCE {
        public static final String GET_LIST = "select * from province";
        public static final String GET_ITEM_BY_ID = "select * from province where id = ?";
    }

    /* DISTRICT */
    public static class DISTRICT {
        public static final String GET_LIST_BY_PROVINCE_ID = "select * from district where province_id = ?";
        public static final String GET_ITEM_BY_ID = "select * from district where id = ?";
    }

    /* WARD */
    public static class WARD {
        public static final String GET_LIST_BY_DISTRICT_ID = "select * from ward where district_id = ?";
        public static final String GET_ITEM_BY_ID = "select * from ward where id = ?";
    }
}
