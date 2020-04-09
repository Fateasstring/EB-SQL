CREATE table customer_inf(

customer_inf_id int UNSIGNED AUTO_INCREMENT NOT NULL COMMENT '自增主键ID',

customer_id int UNSIGNED NOT NULL COMMENT 'customer_login表的自增ID',

customer_name VARCHAR(20) not null COMMENT '用户真实姓名',

identity_card_type TINYINT not null DEFAULT 1 COMMENT '证件类型：1 身份证，2 军官证， 3 护照',

identity_card_no VARCHAR(20) COMMENT '证件号码',

mobile_phone int UNSIGNED COMMENT '手机号',

customer_email VARCHAR(50) COMMENT '邮箱',

gender CHAR(1) COMMENT '性别',

user_point int NOT NULL DEFAULT 0 COMMENT '用户积分',

register_time timestamp not null COMMENT '注册时间',
  
birthday datetime COMMENT '会员生日',

customer_level TINYINT NOT null DEFAULT 1 
COMMENT '会员级别：1.普通会员，2.青铜会员，3.白银会员，4.黄金会员，5.钻石会员',

user_money DECIMAL(8,2) NOT null DEFAULT 0.00 COMMENT '用户余额',

modified_time timestamp NOT null DEFAULT CURRENT_TIMESTAMP
ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',

primary key pk_customerinfid (customer_inf_id)

)ENGINE = INNODB COMMENT '用户信息表';