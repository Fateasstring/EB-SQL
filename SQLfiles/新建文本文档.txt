CREATE table customer_login(
customer_id int UNSIGNED AUTO_INCREMENT NOT NULL COMMENT '用户ID',
login_name VARCHAR(20) NOT NULL COMMENT '用户登陆名',
password CHAR(32) not NULL COMMENT 'md5加密的密码',
user_stats TINYINT NOT null DEFAULT 1 COMMENT '用户状态',
modified_time timestamp NOT null default  CURRENT_TIMESTAMP
ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
PRIMARY key pk_customerid(customer_id)
)engine = INNODB COMMENT = '用户登录表';