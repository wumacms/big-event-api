-- 用户表
CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `user_pic` varchar(2000) DEFAULT NULL COMMENT '头像',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
-- 初始化管理员账号（密码：123456）
INSERT INTO `user` VALUES (1,'admin','e10adc3949ba59abbe56e057f20f883e','管理员','admin@example.com','https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif','2021-01-01 00:00:00','2021-01-01 00:00:00');

-- 分类表
CREATE TABLE `category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `category_alias` varchar(50) DEFAULT NULL COMMENT '别名',
  `create_user` int DEFAULT NULL COMMENT '用户ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 文章表
CREATE TABLE `article` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '内容',
  `cover_img` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '图片',
  `state` varchar(10) DEFAULT NULL COMMENT '发布状态',
  `category_id` int DEFAULT NULL COMMENT '分类ID',
  `create_user` int DEFAULT NULL COMMENT '用户',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

