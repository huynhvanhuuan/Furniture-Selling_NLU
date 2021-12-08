# LẬP TRÌNH WEB - NLU - 17
## ĐỀ TÀI: TRANG WEB BÁN ĐỒ NỘI THẤT
### I.  GIỚI THIỆU
**Thành viên**
- 19130003 - Huỳnh Văn Hữu Ân
- 19130024 - Hoàng Nguyễn Việt Cường
- 19130115 - Trần Vũ Lam

**Giảng viên**
- Thầy: Trần Đình Long
-------
### II. CƠ SỞ DỮ LIỆU

```
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS cart;
CREATE TABLE cart  (
  user_id int NOT NULL,
  product_id int NOT NULL,
  PRIMARY KEY (user_id, product_id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS category;
CREATE TABLE category  (
  id int NOT NULL AUTO_INCREMENT,
  sku varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  name varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS collection;
CREATE TABLE collection  (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  description text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  active bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS collection_detail;
CREATE TABLE collection_detail  (
  collection_id int NOT NULL,
  product_id int NOT NULL,
  PRIMARY KEY (collection_id, product_id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS invoice;
CREATE TABLE invoice  (
  id int NOT NULL AUTO_INCREMENT,
  date_created datetime NOT NULL,
  user_id int NOT NULL,
  total_price decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS invoice_detail;
CREATE TABLE invoice_detail  (
  invoice_id int NOT NULL,
  product_id int NOT NULL,
  price decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (invoice_id, product_id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS material;
CREATE TABLE material  (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS product;
CREATE TABLE product  (
  id int NOT NULL AUTO_INCREMENT,
  sku varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Mã định danh sản phẩm - vd: GHE001',
  name varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  description text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  image_url varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  trademark_id varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  unit_price int UNSIGNED NOT NULL DEFAULT 0,
  unit_in_stock int UNSIGNED NOT NULL DEFAULT 0,
  percent_discount int UNSIGNED NOT NULL DEFAULT 0,
  date_created datetime NOT NULL,
  last_updated datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  active bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS product_category;
CREATE TABLE product_category  (
  product_id int NOT NULL,
  category_id int NOT NULL,
  PRIMARY KEY (product_id, category_id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS product_image;
CREATE TABLE product_image  (
  product_id int NOT NULL,
  image_url varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  INDEX product_id(product_id) USING BTREE,
  CONSTRAINT product_image_ibfk_1 FOREIGN KEY (product_id) REFERENCES product (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS product_material;
CREATE TABLE product_material  (
  product_id int NOT NULL,
  material_id int NOT NULL,
  PRIMARY KEY (product_id, material_id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS product_size;
CREATE TABLE product_size  (
  product_id int NOT NULL,
  size_id int NOT NULL,
  PRIMARY KEY (product_id, size_id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS role;
CREATE TABLE role  (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS size;
CREATE TABLE size  (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  detail varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS trademark;
CREATE TABLE trademark  (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  address varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  website varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS user;
CREATE TABLE user  (
  id int NOT NULL AUTO_INCREMENT,
  first_name varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  last_name varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  username varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  password varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  email varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  profile_image_url varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  date_created datetime NOT NULL,
  last_login_date datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  not_locked bit(1) NOT NULL DEFAULT b'1',
  active bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS wishlist;
CREATE TABLE wishlist  (
  user_id int NOT NULL,
  product_id int NOT NULL,
  PRIMARY KEY (user_id, product_id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
```
-------
### III. CÁC NGUỒN HỖ TRỢ
