create table brand_info(

brand_id SMALLINT unsigned auto_increment not NULL COMMENT '品牌id',

brand_name VARCHAR(50) not null COMMENT '品牌名称',

telephone VARCHAR(50) not null COMMENT '联系电话',

brand_web VARCHAR(100) COMMENT '品牌网站',

brand_logo VARCHAR(100) COMMENT '品牌logo URL',

brand_desc VARCHAR(150) COMMENT '品牌描述',

brand_status TINYINT not NULL DEFAULT 0 COMMENT '品牌状态，0.禁用，1.启用',

brand_order TINYINT not null DEFAULT 0 COMMENT '排序',

modified_time timestamp not null DEFAULT CURRENT_TIMESTAMP 
on UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',

PRIMARY key pk_brandid (brand_id)
)ENGINE = INNODB COMMENT'品牌信息表'