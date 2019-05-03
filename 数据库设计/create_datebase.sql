CREATE TABLE `bill` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
`category_id` int(11) NULL DEFAULT NULL,
`cost` decimal(10,2) NULL DEFAULT NULL,
`yn` tinyint(1) NULL DEFAULT NULL,
`ts` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
`createDate` datetime NULL DEFAULT NULL,
`updateDate` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (`id`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
ROW_FORMAT = Dynamic;

CREATE TABLE `category` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
`is_initial` tinyint(1) NULL DEFAULT NULL,
`yn` tinyint(1) NULL DEFAULT NULL,
`ts` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
`createDate` datetime NULL DEFAULT NULL,
`updateDate` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (`id`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
ROW_FORMAT = Dynamic;

CREATE TABLE `user` (
`id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
`username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
`yn` tinyint(1) NULL DEFAULT NULL,
`ts` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
`createDate` datetime NULL DEFAULT NULL,
`updateDate` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (`id`) 
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
ROW_FORMAT = Dynamic;

CREATE TABLE `user_category` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`category_id` int(11) NULL DEFAULT NULL,
`yn` tinyint(1) NULL DEFAULT NULL,
`ts` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
`createDate` datetime NULL DEFAULT NULL,
`updateDate` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (`id`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
ROW_FORMAT = Dynamic;

