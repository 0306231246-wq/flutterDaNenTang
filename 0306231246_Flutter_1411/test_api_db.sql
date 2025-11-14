/*
 Navicat Premium Data Transfer

 Source Server         : LOCAL
 Source Server Type    : MySQL
 Source Server Version : 100432
 Source Host           : localhost:3306
 Source Schema         : test_api_db

 Target Server Type    : MySQL
 Target Server Version : 100432
 File Encoding         : 65001

 Date: 14/11/2025 13:12:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `total` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `short_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'SKU-JZ7P4NV6', 'Minima eveniet saepe', 919, 'https://picsum.photos/id/101/600/400', 'Et qui quis iste est in temporibus harum eum perferendis.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (2, 'SKU-9XBZCPOV', 'Eius aut facere', 1601, 'https://picsum.photos/id/102/600/400', 'Eius est quia asperiores vero reprehenderit incidunt non in consequuntur eum id quia eos.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (3, 'SKU-HJNDX3JN', 'Cum aut officia', 305, 'https://picsum.photos/id/103/600/400', 'Totam id sed dolore quia cupiditate facere molestiae dolores.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (4, 'SKU-RKAQHT6O', 'Consequatur vero natus', 1840, 'https://picsum.photos/id/104/600/400', 'Quo ut incidunt expedita ut est odit.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (5, 'SKU-Y82SAYDQ', 'Harum dignissimos et', 523, 'https://picsum.photos/id/105/600/400', 'Deleniti aut nihil natus labore quod non nemo.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (6, 'SKU-KVBV4PSQ', 'Veritatis qui nobis', 572, 'https://picsum.photos/id/106/600/400', 'Eum ad quas ut et molestias neque voluptatibus sunt placeat minima.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (7, 'SKU-EG6EHHKO', 'Aut optio voluptatem', 1623, 'https://picsum.photos/id/107/600/400', 'At aut sed sit ut dolore non placeat expedita eaque autem doloribus.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (8, 'SKU-FKT5O5CX', 'Mollitia ut provident', 1996, 'https://picsum.photos/id/108/600/400', 'Culpa sint aut cumque vel soluta dolorum sequi saepe et non.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (9, 'SKU-V4VOER1T', 'Ut ad nihil', 1622, 'https://picsum.photos/id/109/600/400', 'Qui ea porro minus consequuntur rem tempora quam nobis esse.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (10, 'SKU-UIJ9BO38', 'Sed molestiae eum', 511, 'https://picsum.photos/id/110/600/400', 'Quis dignissimos qui mollitia ad unde commodi pariatur non.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (11, 'SKU-5PAGYFLC', 'Voluptatem esse sequi', 977, 'https://picsum.photos/id/111/600/400', 'Velit architecto eum assumenda fugit sint accusantium labore neque veniam dignissimos.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (12, 'SKU-VOEB8YYT', 'Ut minima quia', 1226, 'https://picsum.photos/id/112/600/400', 'Et eos ipsum expedita repellat molestiae temporibus fugit voluptatum reprehenderit.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (13, 'SKU-W9HI41HJ', 'Est et quia', 1431, 'https://picsum.photos/id/113/600/400', 'Et cumque quod excepturi fugit enim autem ab nostrum odio ut et.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (14, 'SKU-O5JD9GFA', 'Libero commodi ratione', 761, 'https://picsum.photos/id/114/600/400', 'Sed quas quia qui sed nisi esse officia aspernatur ea quibusdam.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (15, 'SKU-NAC078QG', 'Et quo quibusdam', 1559, 'https://picsum.photos/id/115/600/400', 'Quis assumenda et corrupti sit reprehenderit aut quia assumenda minima et quaerat est aspernatur.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (16, 'SKU-WGEZ0K3E', 'Non id voluptatem', 1521, 'https://picsum.photos/id/116/600/400', 'Esse fugiat aliquid consequatur corporis asperiores voluptas corrupti qui facere facere laborum.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (17, 'SKU-BR0ZE3XE', 'Et incidunt illum', 655, 'https://picsum.photos/id/117/600/400', 'Odio at delectus similique eum aut sunt beatae impedit dolorum veritatis vel.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (18, 'SKU-PZK6G2BP', 'Assumenda incidunt sunt', 1711, 'https://picsum.photos/id/118/600/400', 'Voluptas non quod dolor quo nesciunt est.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (19, 'SKU-MX5YY0F0', 'Ea voluptatem dolorem', 368, 'https://picsum.photos/id/119/600/400', 'Ut excepturi neque nihil velit fugit natus.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (20, 'SKU-3BJMBEOA', 'Autem nobis et', 1579, 'https://picsum.photos/id/120/600/400', 'Nisi et ipsa inventore fugiat nihil qui.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (21, 'SKU-VWTLGMHJ', 'Porro totam repudiandae', 1875, 'https://picsum.photos/id/121/600/400', 'Cumque aut aut at sunt et occaecati voluptas sit quod nostrum et magnam.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (22, 'SKU-DSQVLOE3', 'Officia dolores ducimus', 501, 'https://picsum.photos/id/122/600/400', 'Sequi velit aut non fugit animi numquam.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (23, 'SKU-TS0FNOEY', 'Deserunt aut sit', 1437, 'https://picsum.photos/id/123/600/400', 'Maiores non ut temporibus nostrum reprehenderit esse in.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (24, 'SKU-AS9JH3D7', 'Maxime id in', 1673, 'https://picsum.photos/id/124/600/400', 'Debitis rerum veniam ipsam voluptas inventore qui omnis voluptas tempore consequatur mollitia omnis.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (25, 'SKU-8CLDBIDN', 'Nam sit aliquam', 1407, 'https://picsum.photos/id/125/600/400', 'Quis non ex maxime sequi praesentium voluptatem omnis.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (26, 'SKU-BBJQHWLR', 'Consequatur ut voluptatem', 1694, 'https://picsum.photos/id/126/600/400', 'Quia qui magni quisquam ex voluptatem ad alias ut error.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (27, 'SKU-IIDASRWP', 'Impedit et cupiditate', 1154, 'https://picsum.photos/id/127/600/400', 'Non nobis soluta fugiat voluptas blanditiis eligendi repellat aut sed temporibus laudantium magnam.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (28, 'SKU-6ETKNUDI', 'Optio eum repellendus', 1778, 'https://picsum.photos/id/128/600/400', 'Et dolorum et accusantium hic fuga sapiente maxime et dignissimos beatae.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (29, 'SKU-MDZAWBZA', 'Beatae deleniti labore', 1257, 'https://picsum.photos/id/129/600/400', 'Dolores animi beatae eaque voluptates cumque saepe tenetur temporibus totam quo accusantium et non aut.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (30, 'SKU-OH3DFPNU', 'Vero possimus numquam', 1435, 'https://picsum.photos/id/130/600/400', 'Pariatur est minus eligendi velit quidem odio est minus et sit et laudantium.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (31, 'SKU-JOD8EXFK', 'Voluptatem eos quas', 424, 'https://picsum.photos/id/131/600/400', 'Tempore est ipsa id veritatis quos quisquam saepe in ea.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (32, 'SKU-L2H3EAQX', 'Consequatur accusantium voluptatibus', 1000, 'https://picsum.photos/id/132/600/400', 'Sed soluta sed aut dolorum dolores non non eveniet corrupti.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (33, 'SKU-UXE52HEB', 'Dignissimos deserunt nulla', 316, 'https://picsum.photos/id/133/600/400', 'Consequatur laudantium non omnis neque necessitatibus et optio ut provident ab.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (34, 'SKU-VR1A0HRR', 'Saepe nulla quas', 373, 'https://picsum.photos/id/134/600/400', 'Odit consequatur exercitationem consequatur ab expedita delectus sequi cum.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (35, 'SKU-RP7H1QCR', 'Cum placeat facere', 875, 'https://picsum.photos/id/135/600/400', 'Impedit dolorem sit cumque quis amet possimus non doloremque dolorem voluptatibus eveniet harum ea.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (36, 'SKU-GIOCOINN', 'Ducimus sunt sunt', 878, 'https://picsum.photos/id/136/600/400', 'Repudiandae enim aperiam aperiam eum ipsam cupiditate saepe voluptas quia.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (37, 'SKU-VGI9SLOH', 'Qui pariatur quo', 829, 'https://picsum.photos/id/137/600/400', 'Eos ducimus maxime atque suscipit est labore.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (38, 'SKU-7WLTWS8O', 'Et ut error', 1489, 'https://picsum.photos/id/138/600/400', 'Laudantium similique molestias aliquid consequatur provident iste.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (39, 'SKU-FKZLEZVE', 'Similique dolorem itaque', 1794, 'https://picsum.photos/id/139/600/400', 'Sint excepturi doloremque vel rerum perferendis consequatur minima voluptatum iste tenetur omnis.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (40, 'SKU-ONLSYSSB', 'Qui et veniam', 449, 'https://picsum.photos/id/140/600/400', 'Debitis recusandae voluptatem impedit reprehenderit tempora et consequatur rerum perspiciatis nam quis.', '2025-11-14 05:51:33', '2025-11-14 05:51:33', NULL);
INSERT INTO `products` VALUES (41, 'SKU-PT14MVBD', 'Voluptate iste suscipit', 1332, 'https://picsum.photos/id/141/600/400', 'Dicta fugit veritatis culpa molestiae rerum corrupti ducimus corporis.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (42, 'SKU-JPNSNTTJ', 'Error fugiat quia', 890, 'https://picsum.photos/id/142/600/400', 'Exercitationem quam et consequatur tempora soluta vitae exercitationem veritatis.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (43, 'SKU-QUGGLI6D', 'Fugit voluptas expedita', 1005, 'https://picsum.photos/id/143/600/400', 'Illo autem sed placeat est quaerat sint ut et incidunt pariatur tenetur est quos.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (44, 'SKU-BR3AN5OG', 'Ut deleniti hic', 363, 'https://picsum.photos/id/144/600/400', 'Aut aliquam pariatur aut consectetur earum harum recusandae voluptatem non quos ut officia magni.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (45, 'SKU-L57HG4G8', 'Sit tempora deleniti', 1445, 'https://picsum.photos/id/145/600/400', 'Ut voluptatibus quidem cumque nesciunt qui asperiores atque consectetur nisi qui saepe fuga necessitatibus.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (46, 'SKU-9TAHHHLM', 'Rerum quas et', 305, 'https://picsum.photos/id/146/600/400', 'Sequi quidem magnam et at qui pariatur aut sunt voluptatem dolorem quod ab.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (47, 'SKU-ITKOKKLX', 'Fugiat nesciunt quo', 1833, 'https://picsum.photos/id/147/600/400', 'Ipsam dolores optio ut ut iure quia voluptatem.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (48, 'SKU-4S8JOTHH', 'Odit quaerat quas', 1800, 'https://picsum.photos/id/148/600/400', 'Odit ut ullam ratione eaque quo maiores quae.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (49, 'SKU-XZRI9WMY', 'At omnis atque', 1233, 'https://picsum.photos/id/149/600/400', 'Pariatur facilis sit voluptatem dolores voluptatum quis nemo qui aut dolore ipsa nostrum.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (50, 'SKU-AMQUAHYU', 'Molestias aperiam necessitatibus', 865, 'https://picsum.photos/id/150/600/400', 'Repellat mollitia molestias id itaque est aut corporis nihil eum nostrum quas est.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (51, 'SKU-BKMPQLOA', 'Et soluta ea', 1030, 'https://picsum.photos/id/151/600/400', 'Eaque laudantium nam unde iste omnis rerum cumque architecto culpa et sit consequatur ullam.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (52, 'SKU-AONNEDXM', 'Placeat ex impedit', 1811, 'https://picsum.photos/id/152/600/400', 'Itaque praesentium aspernatur ullam iste porro sunt quod occaecati.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (53, 'SKU-VPOHVXLP', 'Quasi illum perspiciatis', 1142, 'https://picsum.photos/id/153/600/400', 'Aut eveniet et tempore accusamus molestias aliquid quis laborum laborum in et laboriosam.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (54, 'SKU-WPZHODR3', 'Recusandae dolores hic', 667, 'https://picsum.photos/id/154/600/400', 'Iusto veniam omnis numquam quia aliquam debitis.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (55, 'SKU-CLPPRFSR', 'Iure molestiae suscipit', 496, 'https://picsum.photos/id/155/600/400', 'Iste voluptatem voluptate porro occaecati iste et beatae voluptate quia.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (56, 'SKU-LN4IHGTG', 'Quae sunt qui', 747, 'https://picsum.photos/id/156/600/400', 'Odit voluptatem suscipit voluptas harum reiciendis reiciendis ut consequatur earum et.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (57, 'SKU-XVJJTZJA', 'Illo deserunt quo', 1934, 'https://picsum.photos/id/157/600/400', 'Quos quod illum maxime vel magni autem ut dolores ut illum autem est eum.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (58, 'SKU-EXMM7H0G', 'Maxime unde officiis', 1882, 'https://picsum.photos/id/158/600/400', 'Aut quisquam exercitationem eveniet quas in fugiat aspernatur corrupti quaerat consequatur et assumenda reiciendis.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (59, 'SKU-7GHWC9NW', 'Velit suscipit voluptatem', 1907, 'https://picsum.photos/id/159/600/400', 'Sequi sed odit distinctio necessitatibus et harum placeat voluptatum ipsam consequatur in.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (60, 'SKU-CJBHKCQG', 'Consequatur omnis vero', 736, 'https://picsum.photos/id/160/600/400', 'Quis quasi doloremque rerum perferendis temporibus est ducimus dignissimos.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (61, 'SKU-VPJUAWHK', 'Et voluptatem et', 1522, 'https://picsum.photos/id/161/600/400', 'Ex sint est autem a in odio minus.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (62, 'SKU-R0PFBJV9', 'Officiis nihil quae', 1001, 'https://picsum.photos/id/162/600/400', 'Assumenda dignissimos itaque possimus quis voluptas nihil molestiae ut sit.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (63, 'SKU-YGGGK840', 'Aut voluptatem nam', 1246, 'https://picsum.photos/id/163/600/400', 'Tempora omnis quibusdam id doloribus nam eum eius qui eaque.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (64, 'SKU-PMURHORR', 'Architecto illum neque', 485, 'https://picsum.photos/id/164/600/400', 'Quasi hic facere enim repellat debitis quis quo veniam.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (65, 'SKU-GPOQ61ER', 'Et aut perferendis', 264, 'https://picsum.photos/id/165/600/400', 'Voluptatum repellat quis inventore esse ad atque enim temporibus voluptatem qui repellendus aspernatur et.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (66, 'SKU-5QZAVGTP', 'Eum rerum officiis', 1673, 'https://picsum.photos/id/166/600/400', 'Accusamus velit illo quis quis corrupti maxime beatae impedit temporibus tenetur.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (67, 'SKU-4PFO6JPQ', 'Iusto et quia', 939, 'https://picsum.photos/id/167/600/400', 'Consectetur aliquam voluptas voluptatum et unde nobis.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (68, 'SKU-TMMRHU35', 'Quod iure qui', 854, 'https://picsum.photos/id/168/600/400', 'Culpa excepturi dolorem eos neque ab dolore beatae dignissimos repellendus placeat maxime.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (69, 'SKU-39STDHP2', 'Et minima et', 625, 'https://picsum.photos/id/169/600/400', 'Est dolorem soluta rem nostrum molestiae suscipit nulla in.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (70, 'SKU-OLUMKNC4', 'Iste ut sed', 1575, 'https://picsum.photos/id/170/600/400', 'Incidunt consequatur neque reprehenderit ipsam maxime deserunt.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (71, 'SKU-ZITKGHZM', 'Ipsa quaerat vel', 1443, 'https://picsum.photos/id/171/600/400', 'Ut sed aliquid placeat omnis laborum et eum ducimus eligendi modi quae.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (72, 'SKU-GRMBZFDL', 'Incidunt deleniti amet', 732, 'https://picsum.photos/id/172/600/400', 'Quae qui perspiciatis ipsa sed et est et pariatur harum dolor sed praesentium.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (73, 'SKU-PBEFD2JD', 'Possimus et officia', 577, 'https://picsum.photos/id/173/600/400', 'Consectetur aliquid architecto dolor deleniti veritatis et facere laborum in esse.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (74, 'SKU-LGCUQ3OQ', 'In in et', 338, 'https://picsum.photos/id/174/600/400', 'Natus sunt quaerat dolor beatae voluptatum voluptates omnis recusandae itaque non voluptatem veritatis adipisci.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (75, 'SKU-CMBZVYRF', 'In mollitia nulla', 609, 'https://picsum.photos/id/175/600/400', 'Minus rem deserunt perferendis qui eum ea ipsam autem quibusdam itaque aut veritatis quo.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (76, 'SKU-LI6QV4EX', 'Rerum omnis doloribus', 1014, 'https://picsum.photos/id/176/600/400', 'Unde provident pariatur qui aut accusantium qui ullam.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (77, 'SKU-CM3OUIO5', 'Aut neque similique', 980, 'https://picsum.photos/id/177/600/400', 'Ut aut corporis maiores ex magni omnis.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (78, 'SKU-QTCIKOTV', 'Ut officiis et', 667, 'https://picsum.photos/id/178/600/400', 'Ipsum ea autem qui voluptas molestiae sed sapiente voluptates magni sit aut.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (79, 'SKU-NPRHAYZI', 'Consequatur voluptatem aut', 1347, 'https://picsum.photos/id/179/600/400', 'Dolorum delectus aspernatur expedita voluptate accusamus rem deleniti qui recusandae ipsa modi illo dolore.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (80, 'SKU-RIT4GXYJ', 'Sit et commodi', 192, 'https://picsum.photos/id/180/600/400', 'Et qui architecto necessitatibus ut voluptatibus mollitia.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (81, 'SKU-7OH36V7F', 'Rerum sunt debitis', 271, 'https://picsum.photos/id/181/600/400', 'Labore sint officia voluptatem aperiam quo illo magni aut.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (82, 'SKU-VB4O8S3F', 'Incidunt rerum voluptatem', 1179, 'https://picsum.photos/id/182/600/400', 'Hic omnis perspiciatis explicabo enim repudiandae sunt corporis sint totam voluptatum vero sint blanditiis.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (83, 'SKU-LJDGXXWB', 'Magni odit suscipit', 1985, 'https://picsum.photos/id/183/600/400', 'Tempora fuga perferendis tenetur natus reiciendis consectetur fugiat modi.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (84, 'SKU-VTUB8FYB', 'Voluptatem deleniti deserunt', 622, 'https://picsum.photos/id/184/600/400', 'In illum alias aperiam qui qui ut est ea.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (85, 'SKU-SYFYMNEF', 'Qui quaerat tenetur', 1686, 'https://picsum.photos/id/185/600/400', 'Aut voluptates eos est rerum id suscipit sint quibusdam impedit et asperiores vitae possimus.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (86, 'SKU-59P1OWHQ', 'Quia eaque enim', 1436, 'https://picsum.photos/id/186/600/400', 'Est exercitationem sapiente in debitis qui minus rerum voluptas explicabo sapiente aut quasi necessitatibus.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (87, 'SKU-GODKH4E7', 'Veniam rerum in', 305, 'https://picsum.photos/id/187/600/400', 'Ut voluptates sint sunt blanditiis sit magnam voluptatibus.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (88, 'SKU-49D6GVKD', 'Impedit et ex', 1318, 'https://picsum.photos/id/188/600/400', 'Sapiente voluptate qui est unde et sint inventore autem facere.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (89, 'SKU-GKWHGHVI', 'Necessitatibus magni qui', 1725, 'https://picsum.photos/id/189/600/400', 'Enim dolores exercitationem blanditiis eius beatae at nam vitae natus.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (90, 'SKU-5KQDVP9X', 'Voluptas aut aut', 1392, 'https://picsum.photos/id/190/600/400', 'Voluptatem sint numquam quibusdam quasi perspiciatis sit vero et.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (91, 'SKU-AGFPITAA', 'Magni porro aut', 1742, 'https://picsum.photos/id/191/600/400', 'Facilis necessitatibus ratione velit a error ut praesentium.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (92, 'SKU-JZUWDWHR', 'Alias quaerat odio', 426, 'https://picsum.photos/id/192/600/400', 'Saepe pariatur consequuntur molestias sequi ut molestias natus quasi.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (93, 'SKU-CULD6W5Z', 'Sed necessitatibus vero', 951, 'https://picsum.photos/id/193/600/400', 'Dolor dolor dignissimos sequi et iste soluta dicta aut velit nostrum blanditiis omnis.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (94, 'SKU-TYVMK4SL', 'Aut neque consectetur', 128, 'https://picsum.photos/id/194/600/400', 'Quasi hic voluptatem ut iste velit et.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (95, 'SKU-CC2ZVGS8', 'Excepturi voluptatibus accusantium', 1154, 'https://picsum.photos/id/195/600/400', 'Praesentium beatae aut reprehenderit aliquam inventore est recusandae quasi ducimus nam.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (96, 'SKU-IBA7GZPL', 'Perferendis soluta est', 1148, 'https://picsum.photos/id/196/600/400', 'Ut at voluptas hic dicta qui consequatur voluptatem soluta architecto porro aspernatur.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (97, 'SKU-4TOJEZ6V', 'Maiores sunt rerum', 797, 'https://picsum.photos/id/197/600/400', 'Iure labore est officia consequatur consequuntur ipsum molestiae omnis.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (98, 'SKU-VT8YB0BS', 'Dolore aut qui', 512, 'https://picsum.photos/id/198/600/400', 'Saepe quisquam quia voluptatem itaque et eum enim ut sint et eos.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (99, 'SKU-0GK1DIJO', 'Odit rerum praesentium', 498, 'https://picsum.photos/id/199/600/400', 'Tempora molestias eum esse et quas nam qui aut dolorem quaerat architecto quaerat.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);
INSERT INTO `products` VALUES (100, 'SKU-O4VFIGRK', 'Nisi repellat culpa', 1281, 'https://picsum.photos/id/200/600/400', 'Aut ea nulla ipsam eos veniam est odio ea enim quas odit nisi.', '2025-11-14 05:51:34', '2025-11-14 05:51:34', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dob` date NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
