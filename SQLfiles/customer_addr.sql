CREATE TABLE customer_addr(
customer_addr_id int UNSIGNED AUTO_INCREMENT
not null COMMENT'自增主键ID',

customer_id int UNSIGNED not NULL COMMENT 'customer_login表的自增ID',

zip SMALLINT not null COMMENT '邮编',

province SMALLINT not null COMMENT '地区表中省份的id',

city SMALLINT not null COMMENT '地区表中城市的id',

district SMALLINT not null COMMENT '地区表中的区id',

address VARCHAR(200) not null COMMENT '具体的地址门牌号',

is_default TINYINT not null COMMENT '是否默认',

modified_time timestamp not null DEFAULT CURRENT_TIMESTAMP
ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',

primary key pk_customeraddid (customer_addr_id)
		
)ENGINE = INNODB COMMENT '用户地址表';