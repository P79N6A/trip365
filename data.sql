drop database if exists trip365;
create database trip365;
use trip365;
create table if not exists `admin_users`(
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
	`admin_id` VARCHAR(50) NOT NULL COMMENT '管理员id',
	`account` VARCHAR(50) NOT NULL COMMENT '管理员账号',
	`password` VARCHAR(255) NOT NULL COMMENT '管理员密码',
	`name` VARCHAR(50) NULL COMMENT '管理员姓名',
	`nick_name` VARCHAR(50) NULL COMMENT '管理员昵称',
	`gender` TINYINT NULL COMMENT '性别(0女，1男)',
	`mobile` varchar(50) NULL COMMENT '手机',
	`phone` VARCHAR(50) NULL COMMENT '固定电话',
	`email` VARCHAR(255) NULL COMMENT '电子邮件',
	`qq` VARCHAR(50) NULL COMMENT 'qq号码',
	`status` TINYINT NULL DEFAULT '1' COMMENT '状态(0禁用,1正常,2待审核)',
	`login_num` INT UNSIGNED NULL DEFAULT '0' COMMENT '登录次数',
	`login_time` DATETIME NULL COMMENT '登录时间',
	`last_login_time` DATETIME NULL COMMENT '上次登录时间',
	`ip` VARCHAR(255) NULL COMMENT '登录ip地址',
	`secret` VARCHAR(255) NULL COMMENT '加密密钥',
	`create_user_id` VARCHAR(50) NULL COMMENT '创建用户id',
	`create_user_name` VARCHAR(50) NULL COMMENT '创建用户姓名',
	`modify_user_id` VARCHAR(50) NULL COMMENT '修改用户id',
	`modify_user_name` VARCHAR(50) NULL COMMENT '修改用户姓名',
	`create_at` DATETIME NULL COMMENT '创建时间',
	`update_at` DATETIME NULL COMMENT '修改时间',
	`delete_time` DATETIME NULL COMMENT '删除时间',
	PRIMARY KEY (`id`),
	UNIQUE INDEX (`admin_id`),
	UNIQUE INDEX (`account`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into `admin_users`(admin_id,account,password) values ('admin','admin','53iCojw7PT176')