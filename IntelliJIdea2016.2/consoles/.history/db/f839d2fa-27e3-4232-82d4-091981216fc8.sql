create table tags(
  id int(11) AUTO_INCREMENT comment 'id',
  name varchar(30) not null COMMENT '标签名',
  type int(11) not null default 1 comment '标签类型',
  create_time TIMESTAMP not null default current_timestamp comment '创建时间',
  update_time TIMESTAMP not null default current_timestamp comment '修改时间',
  valid int(11) not null default 1 comment '是否有效：0-无效，1-有效',
  PRIMARY KEY (id),
  key(name),
  key(type)
) comment '标签'
;-- -. . -..- - / . -. - .-. -.--
create table tags(
  id int(11) AUTO_INCREMENT comment 'id',
  name varchar(30) not null COMMENT '标签名',
  type int(11) not null default 1 comment '标签类型',
  create_time TIMESTAMP not null default current_timestamp comment '创建时间',
  update_time TIMESTAMP not null default current_timestamp comment '修改时间',
  valid int(11) not null default 1 comment '是否有效：0-无效，1-有效',
  PRIMARY KEY (id),
  key(name),
  key(type)
) ENGINE MyISAM default CHARSET 'utf8mb4' comment '标签'
;-- -. . -..- - / . -. - .-. -.--
show create table tags
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE `note` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  title varchar(50) not null default '' comment '标题',
  preview varchar(500) not null default '' comment '预览',
  content MEDIUMTEXT not null comment '内容',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `valid` int(11) NOT NULL DEFAULT '1' COMMENT '是否有效：0-无效，1-有效',
  PRIMARY KEY (`id`),
  FULLTEXT (title, preview, content)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='笔记表'