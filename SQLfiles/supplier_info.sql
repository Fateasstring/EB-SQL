CREATE table supplier_info(
supplier_id int UNSIGNED auto_increment not null COMMENT '供应商id',

supplier_code CHAR(8) not null COMMENT '供应商编码',

supplier_name CHAR(50) not NULL COMMENT '供应商名称',

supplier_type TINYINT not NULL COMMENT '供应商类型：1.自营，2.平台',

link_man VARCHAR(10) not NULL COMMENT '供应商联系人',

phone_number VARCHAR(50) not null COMMENT '联系电话',

bank_name VARCHAR(50) not NULL COMMENT '供应商开户银行名称',

bank_account VARCHAR(50) not null COMMENT '银行账号',

address VARCHAR(200) not null COMMENT '供应商地址',

supplier_status TINYINT not null DEFAULT '0' COMMENT '状态：0.禁用，1.启用',

modified_time timestamp not null DEFAULT CURRENT_TIMESTAMP 
ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',

PRIMARY key pk_supplierid (supplier_id)
)ENGINE = INNODB COMMENT '供应商信息表';