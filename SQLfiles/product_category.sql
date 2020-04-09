
CREATE TABLE product_category(
category_id SMALLINT UNSIGNED auto_increment not NULL COMMENT '分类id',

category_name VARCHAR(10) not NULL COMMENT '分类名称',

category_code VARCHAR(10) not NULL COMMENT '分类编码',

parent_id SMALLINT UNSIGNED not null DEFAULT 0 COMMENT '父分类id',

category_level TINYINT not null DEFAULT 1 COMMENT '分类层级',

category_status TINYINT not null DEFAULT 1 COMMENT '分类状态',

modified_time timestamp not null DEFAULT CURRENT_TIMESTAMP 
on UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',

PRIMARY key pk_categoryid(category_id)
)ENGINE = INNODB COMMENT '商品分类';