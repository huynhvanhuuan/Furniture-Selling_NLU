package vn.edu.hcmuaf.fit.database;

public class QUERY {

    /* PRODUCT */
    public static class PRODUCT {
        public static final String GET_LIST = "select * from product";
        public static final String GET_PRODUCT_BY_ID = "select * from product where id = ?";
        public static final String GET_LAST_PRODUCT = "select * from product order by id desc limit 1";
        public static final String CREATE = "insert into product(name, description, trademark_id, category_id, date_created, last_updated) " +
                "values(?, ?, ?, ?, now(), now())";
        public static final String UPDATE = "update product set name = ?, description = ?, trademark_id = ?, category_id = ?, active = ? where id = ?";
        public static final String DELETE = "delete from product where id = ?";
        public static final String CHANGE_ACTIVE = "update product set active = (case active when 1 then 0 when 0 then 1 end) where id = ?";
    }
    
    /* PRODUCT DETAIL */
    public static class PRODUCT_DETAIL {
        
    }

    /* COLOR */
    public static class COLOR {
        public static final String GET_LIST = "select * from color";
    }

    /* MATERIAL */
    public static class MATERIAL {
        public static final String GET_LIST = "select * from material";
    }

    /* WAREHOUSE */
    public static class WAREHOUSE {
        public static final String GET_LIST = "select * from warehouse";
        public static final String CREATE = "insert into warehouse values(?,?,?,?,?,?,?,?)";
        public static final String UPDATE = "update warehouse";
    }

    /* CATEGORY */
    public static class CATEGORY {
        public static final String GET_LIST = "select * from category";
        public static final String GET_CATEGORY_BY_SKU = "select * from category where sku like ?";
        public static final String CREATE = "insert into category(sku, name) values(?, ?)";
        public static final String UPDATE = "update category set name = ? where sku = ?";
        public static final String DELETE = "delete from category where sku = ?";
        public static final String CHANGE_ACTIVE = "update category set active = (case active when 1 then 0 when 0 then 1 end) where id = ?";
    }

    /* TRADEMARK */
    public static class TRADEMARK {
        public static final String GET_LIST = "select * from trademark";
        //public static final String GET_TRADEMARK_BY_ID = "select * from trademark where id = ?";
        public static final String CREATE = "insert into trademark(name, website) values(?, ?)";
        public static final String CREATE_TRADEMARK_ADDRESS = "insert into address(number, street, ward_id, district_id, path) values(?, ?, ?, ?, ?)";
        public static final String UPDATE = "update trademark set name = ?, website = ? where id = ?";
        public static final String DELETE = "delete from trademark where id = ?";
    }

    /* USER */
    public static class USER {
        public static final String GET_LIST = "select * from user";
        public static final String GET_USER_BY_ID = "select * from user where id = ?";
        public static final String CREATE_ADDRESS = "insert into user_address(user_id, address_id) values(?, ?)";
        public static final String DELETE_ADDRESS = "delete from trademark_address where address_id = ?";
    }

    /* ADDRESS */
    public static class ADDRESS {
        public static final String GET_ADDRESS_LIST_BY_TRADEMARK_ID = "select a.* from address a inner join trademark_address ta on a.id = ta.address_id where trademark_id = ?";
        public static final String GET_ADDRESS_LIST_BY_USER_ID = "select a from address a inner join user_address ua on a.id = ua.address_id where user_id = ?";
        public static final String GET_PROVINCE_LIST = "select * from province";
        public static final String GET_DISTRICT_LIST_BY_PROVINCE_ID = "select * from district where province_id = ?";
        public static final String GET_WARD_LIST_BY_DISTRICT_ID = "select * from ward where district_id = ?";
        public static final String GET_ADDRESS_BY_ID = "select * from address where id = ?";
        public static final String GET_ADDRESS_BY_PATH = "select * from address where id = ?";
        public static final String GET_PROVINCE = "select * from province where id = ?";
        public static final String GET_DISTRICT = "select * from district where id = ?";
        public static final String GET_WARD = "select * from ward where id = ?";
        public static final String CREATE = "insert into address(number, street, ward_id, district_id, path) values(?,?,?,?,?)";
        public static final String UPDATE = "update address set number = ?, street = ?, ward_id = ?, district_id = ?, path = ? where id = ?";
        public static final String DELETE = "delete from address where id = ?";
        public static final String GET_LAST_ID = "select id from address order by id desc limit 1";
    }

    /* TRADEMARK - ADDRESS */
    public static class TRADEMARK_ADDRESS {
        public static final String CREATE = "insert into trademark_address(trademark_id, address_id) values(?, ?)";
        public static final String DELETE_BY_ADDRESS_ID = "delete from trademark_address where address_id = ?";
        public static final String DELETE_BY_TRADEMARK_ID = "delete from trademark_address where trademark_id = ?";
    }
    
    /* USER - ADDRESS */
    public static class USER_ADDRESS {
        public static final String CREATE = "insert into user_address(user_id, address_id) values(?, ?)";
        public static final String DELETE_BY_ADDRESS_ID = "delete from user_address where address_id = ?";
        public static final String DELETE_BY_USER_ID = "delete from user_address where user_id = ?";
    }
}
