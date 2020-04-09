CREATE table customer_level_inf(

customer_level TINYINT not NULL auto_increment COMMENT '会员级别ID',

level_name VARCHAR(10) NOT NULL COMMENT '会员级别名称',

min_point int UNSIGNED not null DEFAULT 0 COMMENT '该级别最低积分',

max_point int UNSIGNED not null DEFAULT 0 COMMENT '该级别最高积分',

modified_time timestamp not null DEFAULT CURRENT_TIMESTAMP 
ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',

primary key pk_levelid(customer_level)  

)ENGINE = INNODB COMMENT '用户级别信息表';