CREATE table customer_login_log(

login_id int UNSIGNED not null AUTO_INCREMENT COMMENT '登录日志id',

customer_id int UNSIGNED NOT null COMMENT '登录用户id',

login_time timestamp not null COMMENT '用户登录时间',

login_ip int UNSIGNED not null COMMENT '登录ip',

login_type TINYINT not null COMMENT '登录类型：0.未成功，1.成功',

primary key pk_loginid(login_id)

)ENGINE = INNODB COMMENT '用户登陆日志表'