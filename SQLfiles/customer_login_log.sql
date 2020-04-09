-- CREATE table customer_login_log(

-- login_id int UNSIGNED not null AUTO_INCREMENT COMMENT '登录日志id',

-- customer_id int UNSIGNED NOT null COMMENT '登录用户id',

-- login_time timestamp not null COMMENT '用户登录时间',

-- login_ip int UNSIGNED not null COMMENT '登录ip',

-- login_type TINYINT not null COMMENT '登录类型：0.未成功，1.成功',

-- primary key pk_loginid(login_id)

-- )ENGINE = INNODB COMMENT '用户登陆日志表'

-- CREATE table customer_login_log(
-- customer_id int UNSIGNED NOT null ,
-- login_time DATETIME not null ,
-- login_ip int UNSIGNED not null ,
-- login_type TINYINT not null 
-- )ENGINE = INNODB 
-- PARTITION by RANGE(YEAR(login_time))(
-- PARTITION p0 VALUES less than(2015),
-- PARTITION p1 VALUES less than(2016),
-- PARTITION p2 VALUES less than(2017)
-- );

INSERT into customer_login_log(customer_id, login_time, login_ip, login_type)
VALUES
(1001,'2015-01-25',0,1),
(1001,'2015-07-1',0,1),
(1001,'2015-10-1',0,1),
(1001,'2016-3-1',0,1),
(1001,'2016-9-1',0,1)

SELECT *FROM customer_login_log;

SELECT 
table_name, partition_name, partition_description, table_rows
FROM 
information_schema.`PARTITIONS`
WHERE 
TABLE_NAME = 'customer_login_log'

ALTER TABLE customer_login_log ADD partition (partition p4 VALUES less than(2018));

ALTER TABLE customer_login_log DROP partition p0;

-- 与分区表结构相同的非分区表
CREATE table arch_customer_login_log(
customer_id int UNSIGNED NOT null ,
login_time DATETIME not null ,
login_ip int UNSIGNED not null ,
login_type TINYINT not null 
)ENGINE = INNODB 


CREATE table customer_login_log(
customer_id int UNSIGNED NOT null ,
login_time DATETIME not null ,
login_ip int UNSIGNED not null ,
login_type TINYINT not null 
)ENGINE = INNODB 
PARTITION by RANGE(YEAR(login_time))(
PARTITION p0 VALUES less than(2015),
PARTITION p1 VALUES less than(2016),
PARTITION p2 VALUES less than(2017)
);

-- 
-- 现在将这些数据交换到归档表中
ALTER TABLE customer_login_log exchange PARTITION p1 WITH TABLE arch_customer_login_log;

SELECT *FROM customer_login_log;

SELECT *FROM arch_customer_login_log;

ALTER TABLE customer_login_log DROP partition p1;

ALTER TABLE arch_customer_login_log ENGINE=archive;