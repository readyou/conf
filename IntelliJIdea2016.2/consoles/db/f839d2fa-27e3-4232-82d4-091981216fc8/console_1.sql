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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='笔记表';