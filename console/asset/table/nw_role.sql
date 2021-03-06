/* 角色表 */
CREATE TABLE IF NOT EXISTS `nw_role` (
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `user_id` INT(10) UNSIGNED NOT NULL COMMENT '用户 ID',
    `name` VARCHAR(32) NOT NULL COMMENT '角色名',
    `max_hp` DECIMAL(10, 2) NOT NULL COMMENT '最大生命值',
    `max_mp` DECIMAL(10, 2) NOT NULL COMMENT '最大魔法值',
    `hp` DECIMAL(10, 2) NOT NULL COMMENT '当前生命值',
    `mp` DECIMAL(10, 2) NOT NULL COMMENT '当前魔法值',
    `money` DECIMAL(10, 2) NOT NULL COMMENT '钱',
    `createtime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (`id`),
    UNIQUE KEY `NAME_UNIQUE` (`name`),
    KEY `USER_INDEX` (`user_id`),
    KEY `CREATETIME_INDEX` (`createtime`)
) ENGINE='InnoDB' CHARSET='utf8mb4' DEFAULT COLLATE='utf8mb4_unicode_ci' COMMENT='角色表';
