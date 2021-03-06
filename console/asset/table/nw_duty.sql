/* 权限表 */
CREATE TABLE IF NOT EXISTS `nw_duty` (
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `name` VARCHAR(31) NOT NULL COMMENT '职务名',
    `permits` TEXT NOT NULL COMMENT '权限信息',
    `createtime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (`id`),
    UNIQUE KEY `NAME_UNIQUE` (`name`),
    KEY `CREATETIME_INDEX` (`createtime`)
) ENGINE='InnoDB' CHARSET='utf8mb4' DEFAULT COLLATE='utf8mb4_unicode_ci' COMMENT='权限表';
