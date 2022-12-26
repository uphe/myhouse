/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50643
 Source Host           : localhost:3306
 Source Schema         : manland

 Target Server Type    : MySQL
 Target Server Version : 50643
 File Encoding         : 65001

 Date: 16/03/2021 22:35:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(100) NOT NULL,
  `cate_sort` int(11) NOT NULL DEFAULT '1',
  `cate_desc` varchar(100) DEFAULT NULL,
  `del_flag` int(1) NOT NULL DEFAULT '0',
  `create_by` varchar(20) DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(20) DEFAULT NULL,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` VALUES (1, '整租', 1, '整租', 0, 'admin', '2020-10-13 11:00:16', 'admin', '2020-11-30 20:53:46');
INSERT INTO `category` VALUES (2, '合租', 1, '合租', 0, 'admin', '2020-10-13 11:00:16', 'admin', '2020-11-30 20:53:48');
COMMIT;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `city_name` varchar(100) NOT NULL,
  `del_flag` int(1) NOT NULL DEFAULT '0',
  `create_by` varchar(20) DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(20) DEFAULT NULL,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of city
-- ----------------------------
BEGIN;
INSERT INTO `city` VALUES (1, '北京', 0, 'admin', '2020-10-13 11:00:16', 'admin', '2020-10-13 15:51:27');
INSERT INTO `city` VALUES (2, '上海', 0, 'admin', '2020-10-13 11:00:16', 'admin', '2020-10-13 15:51:29');
INSERT INTO `city` VALUES (3, '广州', 0, 'admin', '2020-10-13 11:00:16', 'admin', '2020-10-13 15:53:00');
INSERT INTO `city` VALUES (4, '深圳', 0, 'admin', '2020-10-13 11:00:16', 'admin', '2020-10-13 15:53:02');
INSERT INTO `city` VALUES (5, '杭州', 0, 'admin', '2020-10-13 11:00:16', 'admin', '2020-10-13 15:53:04');
INSERT INTO `city` VALUES (6, '武汉', 0, 'admin', '2020-10-13 11:00:16', 'admin', '2020-10-13 15:53:04');
INSERT INTO `city` VALUES (7, '长沙', 0, 'admin', '2020-10-13 15:53:17', 'admin', '2020-10-13 15:53:50');
INSERT INTO `city` VALUES (8, '大连', 0, 'admin', '2020-10-13 15:53:22', 'admin', '2020-10-13 15:53:51');
INSERT INTO `city` VALUES (9, '厦门', 0, 'admin', '2020-10-13 15:53:30', 'admin', '2020-10-13 15:53:52');
INSERT INTO `city` VALUES (10, '南京', 0, 'admin', '2020-10-13 15:53:44', 'admin', '2020-10-13 15:53:52');
COMMIT;

-- ----------------------------
-- Table structure for finance_record
-- ----------------------------
DROP TABLE IF EXISTS `finance_record`;
CREATE TABLE `finance_record` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_by` varchar(255) DEFAULT 'admin' COMMENT '创建人',
  `update_by` varchar(255) DEFAULT 'admin' COMMENT '更新人',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标志',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `money` int(11) NOT NULL COMMENT '金额',
  `type` varchar(100) DEFAULT NULL COMMENT '类型：租金收入/押金收入/租金退回收入/押金退回收入',
  `content` varchar(255) DEFAULT NULL COMMENT '描述内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of finance_record
-- ----------------------------
BEGIN;
INSERT INTO `finance_record` VALUES (1, '2021-03-16 21:55:35', '2021-03-16 21:55:35', 'admin', 'admin', 0, 9, -355400, '房租支出(包括押金)', '房屋总金额349400,押金6000,订单ID:1');
INSERT INTO `finance_record` VALUES (2, '2021-03-16 21:55:35', '2021-03-16 21:55:35', 'admin', 'admin', 0, 5, 355400, '房租收入(包括押金)', '房屋总金额349400,押金6000,订单ID:1');
INSERT INTO `finance_record` VALUES (3, '2021-03-16 22:21:51', '2021-03-16 22:21:51', 'admin', 'admin', 0, 2, -114400, '房租支出(包括押金)', '房屋总金额108400,押金6000,订单ID:2');
INSERT INTO `finance_record` VALUES (4, '2021-03-16 22:21:51', '2021-03-16 22:21:51', 'admin', 'admin', 0, 5, 114400, '房租收入(包括押金)', '房屋总金额108400,押金6000,订单ID:2');
INSERT INTO `finance_record` VALUES (5, '2021-03-16 22:22:33', '2021-03-16 22:22:32', 'admin', 'admin', 0, 2, -143800, '房租支出(包括押金)', '房屋总金额137800,押金6000,订单ID:3');
INSERT INTO `finance_record` VALUES (6, '2021-03-16 22:22:33', '2021-03-16 22:22:32', 'admin', 'admin', 0, 5, 143800, '房租收入(包括押金)', '房屋总金额137800,押金6000,订单ID:3');
INSERT INTO `finance_record` VALUES (7, '2021-03-16 22:28:07', '2021-03-16 22:28:06', 'admin', 'admin', 0, 2, -38600, '房租支出(包括押金)', '房屋总金额32600,押金6000,订单ID:4');
INSERT INTO `finance_record` VALUES (8, '2021-03-16 22:28:07', '2021-03-16 22:28:06', 'admin', 'admin', 0, 5, 38600, '房租收入(包括押金)', '房屋总金额32600,押金6000,订单ID:4');
INSERT INTO `finance_record` VALUES (9, '2021-03-16 22:30:31', '2021-03-16 22:30:31', 'admin', 'admin', 0, 2, 38600, '房租退回收入(包括押金)', '包括租金退回32600,押金6000,订单ID:4');
INSERT INTO `finance_record` VALUES (10, '2021-03-16 22:30:31', '2021-03-16 22:30:31', 'admin', 'admin', 0, 5, -38600, '房租退回支出(包括租金)', '包括租金退回32600,押金6000,订单ID:4');
COMMIT;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `del_flag` int(1) NOT NULL DEFAULT '0',
  `create_by` varchar(20) DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(20) DEFAULT NULL,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `summary` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of notice
-- ----------------------------
BEGIN;
INSERT INTO `notice` VALUES (1, 0, NULL, '2020-12-06 16:46:19', NULL, '2020-12-06 17:55:51', '房东出租注意事项', '<p>很多房东认为，只要房子租给别人了，就可以坐等收租金了。房子出租后，房客和房屋出什么问题与自己无关，其实这是大家的一个误区。那么房屋出租要注意什么？怎么做房东才可以放心地把房子租给别人住？如何才能维护自身利益，更好地做好租房这比生意？今天在这里和各位房东一起分享下出租房子的注意事项，希望对大家有用。</p><p>房东出租房注意事项</p><p>对房客进行筛选尽量将房子租给有正当职业、有修养的人。</p><p>房东要核实房客身份房东在出租房屋时应对租房人的身份加以核实，主要包括身份证、护照、驾驶证等相关证件的核查，同时要访问租房者的姓名、工作、居住人数、用途等情况，并且留下身份证的复印件。必要时到其单位看一下，是否真有其人，或到派出所查验一下，避免案犯入住。</p><p>出租押金可以多要一些押金。一般来说，我们签署合同时，都是留房客一个月的房租作为押金。如果租金是1000/月，押金就留1000。当然，如果房子是新装修的、新家电，也可以适当的多留一些。</p><p>避免房租各项费用的拖欠让房客保留交纳水、电、暖、煤气、有线电视、宽带、电话费用的收据，避免各项欠费。</p><p>房东多回访房客房东要经常和房客保持联系，经常打电话询问房屋的情况，并定期看看房屋的基本概况。可间隔一段时间到出租房屋内看看，以了解房屋的居住情况，也可对房屋内设施的使用有所了解。</p><p>经常了解一下邻居的反映避免发生损害邻居的利益或是有违公共道德的事情。</p><p>最后，各位房东还要了解的一点是房屋的长租赁期限不能超过20年，否则超过的部分无效。相信有了这些知识，您能够更安心地做好租房这比生意。</p>', '很多房东认为，只要房子租给别人了，就可以坐等收租金了。房子出租后，房客和房屋出什么问题与自己无关，其实这是大家的一个误区。那么房屋出租要注意什么？怎么做房东才可以放心地把房子租给别人住？如何才能维护自');
INSERT INTO `notice` VALUES (2, 0, NULL, '2020-12-06 16:49:23', NULL, '2020-12-06 17:55:47', '租房子要注意什么？要交物业费吗？', '<p>现在的年轻人在大城市打拼不易，越来越多人都承担不起买房的费用，所以更多倾向于租房子。但是租房子也面临着很多问题。比如，租房子要注意什么，要交物业费吗？租房前的准备有哪些呢？接下来，小编为您一一解答这些问题。</p><h2>一、租房子要注意什么</h2><p>１、租房时应让房东出示原件、户口本原件和原件，如果房产证在办理过程中，那应出示与原产权单位签署的购房合同，如果是帮别人出租房屋，那要出租委托书、委托人的房产证、身份证复印件。</p><p>２、签订租赁合同时，要注明租约期满后多少个工作日内，房屋及设施无毁损的情况下，业主应退还押金。当然，租房人应当爱护屋内设施，不要终授人以柄。</p><h2>二、要交物业费吗</h2><p><br></p><p>如果房屋租赁合同里什么也没说，租房物业费就由出租人来交，但是如果双方在合同中约定由承租人交，那么承租人就得按照合同向物业管理公司交物业管理费了。</p><p>参考法条：国务院《物业管理条例》第六十七条。《合同法》第六十条。</p><p>如果出租人和承租人在合同中约定，由承租人向物业公司缴纳物业费，遵守物业公司的相关管理规定，并且该合同经过了物业公司的书面确认，那么出租人就将其与物业公司的债权债务转让给了承租人，承租人应当向物业公司履行这部分权利义务。如果承租人没有付物业费，就应向物业公司承担违约责任。</p><p>参考法条：《合同法》第八十八条。</p><p>三、租房前的准备有哪些呢？</p><p>首先，租房预算：一般来说一线城市单人房租预算公式是：房租&le;你税后工资的１／３，水电网煤一般再加100。其次，目标地段：这受公司位置影响，通勤时间越短越好。要么你家近到可以步行／骑行上班，要么就选择在交通沿线上，尽量少换乘或不换乘，一般来说40分钟以内的通勤时间是比较理想的。最后，住房需求：写得越具体越好，分清哪些需求是硬性指标、哪些只是加分项，这会大大提高你后面找房子的效率。实地看房后，你还要不断根据现实调整期望值，在有限预算内做出取舍。</p><p>以上就是小编为大家整理的有关租房子要注意什么，要交物业费吗的相关法律知识。综上所述，如果房屋租赁合同里什么也没说，租房物业费就由出租人来交，但是如果双方在合同中约定由承租人交，那么承租人就得按照合同向物业管理公司交物业管理费了。</p>', '现在的年轻人在大城市打拼不易，越来越多人都承担不起买房的费用，所以更多倾向于租房子。但是租房子也面临着很多问题。比如，租房子要注意什么，要交物业费吗？租房前的准备有哪些呢？接下来，小编为您一一解答这些');
COMMIT;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(200) NOT NULL,
  `resource_type` varchar(255) NOT NULL,
  `pid` bigint(20) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `del_flag` int(1) DEFAULT '0',
  `create_by` varchar(20) NOT NULL DEFAULT 'admin',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(20) DEFAULT 'admin',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `sort` double(11,0) DEFAULT '1',
  `target` varchar(20) DEFAULT '_self',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of permission
-- ----------------------------
BEGIN;
INSERT INTO `permission` VALUES (1, '首页', '/admin', 'menu', 0, 'fa fa-dashboard', 0, 'admin', '2019-10-15 20:22:36', 'admin', '2020-02-16 12:42:25', 1, '_self');
INSERT INTO `permission` VALUES (6, '获得侧边栏菜单', '/admin/currentMenus', 'button', 1, '', 0, 'admin', '2019-10-15 20:22:36', 'admin', '2020-02-07 23:45:28', 6, '_self');
INSERT INTO `permission` VALUES (70, '用户管理', '/admin/user', 'menu', 0, 'fa fa-users', 0, 'admin', '2019-10-15 20:22:36', 'admin', '2020-12-06 13:55:14', 90, '_self');
INSERT INTO `permission` VALUES (73, '用户保存', '/admin/user/save', 'button', 70, NULL, 0, 'admin', '2019-10-15 20:22:36', 'admin', '2019-10-15 20:30:55', 73, '_self');
INSERT INTO `permission` VALUES (74, '删除用户', '/admin/user/delete', 'button', 70, NULL, 0, 'admin', '2019-10-15 20:22:36', 'admin', '2019-10-15 20:30:55', 74, '_self');
INSERT INTO `permission` VALUES (75, '批量删除用户', '/admin/user/batchDelete', 'button', 70, NULL, 0, 'admin', '2019-10-15 20:22:36', 'admin', '2019-10-15 20:30:55', 75, '_self');
INSERT INTO `permission` VALUES (76, '编辑用户', '/admin/user/edit', 'button', 70, '', 0, 'admin', '2019-10-15 20:22:36', 'admin', '2020-02-16 13:27:24', 76, '_self');
INSERT INTO `permission` VALUES (82, '保存个人信息', '/admin/user/profile/save', 'button', 120, '', 0, 'admin', '2019-10-15 20:22:36', 'admin', '2020-02-07 23:43:51', 82, '_self');
INSERT INTO `permission` VALUES (83, '修改密码', '/admin/user/changePass', 'button', 120, '', 0, 'admin', '2019-10-15 20:22:36', 'admin', '2020-02-07 23:43:41', 83, '_self');
INSERT INTO `permission` VALUES (91, '角色管理', '/admin/role', 'menu', 0, 'fa fa-snowflake-o', 0, 'admin', '2019-10-15 20:22:36', 'admin', '2021-02-25 16:54:20', 91, '_self');
INSERT INTO `permission` VALUES (92, '保存角色', '/admin/role/save', 'button', 91, '', 0, 'admin', '2019-10-15 20:22:36', 'admin', '2020-02-07 23:55:53', 92, '_self');
INSERT INTO `permission` VALUES (93, '编辑角色', '/admin/role/edit', 'page', 91, '', 0, 'admin', '2019-10-15 20:22:36', 'admin', '2020-02-07 23:58:40', 93, '_self');
INSERT INTO `permission` VALUES (94, '删除角色', '/admin/role/delete', 'button', 91, '', 0, 'admin', '2019-10-15 20:22:36', 'admin', '2020-02-07 23:55:47', 94, '_self');
INSERT INTO `permission` VALUES (95, '权限管理', '/admin/permission', 'menu', 0, 'fa fa-podcast', 0, 'admin', '2019-10-15 20:22:36', 'admin', '2021-02-25 16:54:17', 95, '_self');
INSERT INTO `permission` VALUES (96, '保存权限', '/admin/permission/save', 'button', 95, '', 0, 'admin', '2019-10-15 20:22:36', 'admin', '2020-02-07 23:55:45', 96, '_self');
INSERT INTO `permission` VALUES (97, '编辑权限', '/admin/permission/edit', 'page', 95, '', 0, 'admin', '2019-10-15 20:22:36', 'admin', '2020-02-07 23:57:13', 97, '_self');
INSERT INTO `permission` VALUES (98, '删除权限', '/admin/permission/delete', 'button', 95, '', 0, 'admin', '2019-10-15 20:22:36', 'admin', '2020-02-07 23:55:43', 98, '_self');
INSERT INTO `permission` VALUES (106, '获得当前登录用户信息接口', '/admin/currentUser', 'button', 1, '', 0, 'admin', '2020-02-04 10:26:13', 'admin', '2020-02-07 23:37:08', 1, '_self');
INSERT INTO `permission` VALUES (110, '添加权限', '/admin/permission/new', 'menu', 95, 'fa fa-circle-o', 0, 'admin', '2020-02-07 23:14:11', 'admin', '2020-02-16 12:55:01', 1, '_self');
INSERT INTO `permission` VALUES (111, '添加角色', '/admin/role/new', 'menu', 91, 'fa fa-circle-o', 0, 'admin', '2020-02-07 23:19:05', 'admin', '2020-02-16 12:54:51', 1, '_self');
INSERT INTO `permission` VALUES (120, '个人信息', '/admin/user/profile', 'menu', 0, 'fa fa-user', 0, 'admin', '2020-02-07 23:38:51', 'admin', '2020-12-06 13:55:28', 90, '_self');
INSERT INTO `permission` VALUES (127, '角色列表', '/admin/role', 'menu', 91, 'fa fa-circle-o', 0, 'admin', '2020-02-08 19:20:54', 'admin', '2020-02-16 12:54:47', 0, '_self');
INSERT INTO `permission` VALUES (128, '权限列表', '/admin/permission', 'menu', 95, 'fa fa-circle-o', 0, 'admin', '2020-02-08 19:21:16', 'admin', '2020-02-16 12:54:57', 0, '_self');
INSERT INTO `permission` VALUES (132, '新增房屋', '/admin/post/new', 'page', 308, 'fa fa-circle-o', 0, 'admin', '2020-03-07 19:39:34', 'admin', '2021-03-16 19:08:43', 9, '_self');
INSERT INTO `permission` VALUES (137, '租房类型管理', '/admin/category', 'menu', 0, 'fa fa-book', 0, 'admin', '2020-03-07 20:00:57', 'admin', '2020-12-06 13:55:47', 2, '_self');
INSERT INTO `permission` VALUES (140, '删除房屋', '/admin/post/delete', 'button', 308, '', 0, 'admin', '2020-03-08 15:02:20', 'admin', '2021-03-16 19:12:53', 1, '_self');
INSERT INTO `permission` VALUES (141, '批量删除房屋', '/admin/post/batchDelete', 'button', 308, '', 0, 'admin', '2020-03-08 15:03:02', 'admin', '2021-03-16 19:11:52', 1, '_self');
INSERT INTO `permission` VALUES (142, '编辑房屋信息', '/admin/post/edit', 'page', 308, '', 0, 'admin', '2020-03-08 15:03:49', 'admin', '2021-03-16 19:11:45', 1, '_self');
INSERT INTO `permission` VALUES (143, '保存房屋', '/admin/post/save', 'button', 132, '', 0, 'admin', '2020-03-08 15:04:42', 'admin', '2020-10-15 09:50:46', 1, '_self');
INSERT INTO `permission` VALUES (144, '还原房屋', '/admin/post/revert', 'button', 308, '', 0, 'admin', '2020-03-08 15:05:23', 'admin', '2021-03-16 19:11:31', 1, '_self');
INSERT INTO `permission` VALUES (145, '移到回收站', '/admin/post/throw', 'button', 308, '', 0, 'admin', '2020-03-08 15:07:01', 'admin', '2021-03-16 19:10:37', 1, '_self');
INSERT INTO `permission` VALUES (146, '文件上传', '/admin/file/upload', 'button', 132, '', 0, 'admin', '2020-03-08 17:53:01', 'admin', '2020-03-08 17:53:01', 1, '_self');
INSERT INTO `permission` VALUES (147, '保存类型', '/admin/category/save', 'button', 137, '', 0, 'admin', '2020-03-08 18:51:48', 'admin', '2020-12-05 20:06:47', 1, '_self');
INSERT INTO `permission` VALUES (148, '编辑类型', '/admin/category/edit', 'button', 137, '', 0, 'admin', '2020-03-08 18:52:27', 'admin', '2020-12-05 20:07:03', 1, '_self');
INSERT INTO `permission` VALUES (149, '删除类型', '/admin/category/delete', 'button', 137, '', 0, 'admin', '2020-03-08 18:54:13', 'admin', '2020-12-05 20:06:53', 1, '_self');
INSERT INTO `permission` VALUES (169, '获得当前登录用户角色接口', '/admin/currentRole', 'button', 1, '', 0, 'admin', '2020-04-07 23:02:23', 'admin', '2020-04-07 23:02:23', 1, '_self');
INSERT INTO `permission` VALUES (171, '用户资料', '/admin/user/info', 'page', 1, '', 0, 'admin', '2020-10-15 09:59:06', 'admin', '2021-03-16 19:36:23', 1, '_self');
INSERT INTO `permission` VALUES (200, '用户文件上传', '/admin/file/upload', 'button', 120, '', 0, 'admin', '2020-11-18 09:59:26', 'admin', '2020-11-18 09:59:26', 1, '_self');
INSERT INTO `permission` VALUES (308, '房屋管理', '/admin/post', 'menu', 0, 'fa fa-paint-brush', 0, 'admin', '2020-12-06 11:01:48', 'admin', '2020-12-06 11:01:48', 1, '_self');
INSERT INTO `permission` VALUES (312, '公告管理', '/admin/notice', 'menu', 0, 'fa fa-newspaper-o', 0, 'admin', '2020-12-06 15:58:30', 'admin', '2020-12-06 15:58:41', 90, '_self');
INSERT INTO `permission` VALUES (313, '新增公告页面', '/admin/notice/new', 'page', 312, '', 0, 'admin', '2020-12-06 15:59:05', 'admin', '2020-12-06 15:59:05', 1, '_self');
INSERT INTO `permission` VALUES (314, '发布公告', '/admin/notice/save', 'button', 312, '', 0, 'admin', '2020-12-06 15:59:23', 'admin', '2020-12-06 15:59:23', 1, '_self');
INSERT INTO `permission` VALUES (315, '编辑公告页面', '/admin/notice/edit', 'page', 312, '', 0, 'admin', '2020-12-06 15:59:49', 'admin', '2020-12-06 15:59:49', 1, '_self');
INSERT INTO `permission` VALUES (316, '删除公告', '/admin/notice/delete', 'button', 312, '', 0, 'admin', '2020-12-06 16:00:09', 'admin', '2020-12-06 16:00:09', 1, '_self');
INSERT INTO `permission` VALUES (317, '添加用户', '/admin/user/new', 'button', 70, '', 0, 'admin', '2021-01-11 14:09:28', 'admin', '2021-01-11 14:09:28', 1, '_self');
INSERT INTO `permission` VALUES (318, '订单管理', '/admin/order', 'menu', 0, 'fa fa-database', 0, 'admin', '2021-03-09 18:32:46', 'admin', '2021-03-09 18:34:44', 30, '_self');
INSERT INTO `permission` VALUES (319, '取消订单', '/admin/order/cancel', 'button', 318, '', 0, 'admin', '2021-03-16 19:22:36', 'admin', '2021-03-16 19:22:36', 1, '_self');
INSERT INTO `permission` VALUES (320, '支付订单', '/admin/order/pay', 'button', 318, '', 0, 'admin', '2021-03-16 19:22:48', 'admin', '2021-03-16 19:22:48', 1, '_self');
INSERT INTO `permission` VALUES (321, '退租申请', '/admin/order/offLeaseApply', 'button', 318, '', 0, 'admin', '2021-03-16 19:23:31', 'admin', '2021-03-16 19:23:46', 1, '_self');
INSERT INTO `permission` VALUES (322, '退租申请通过', '/admin/order/offLeaseApplyPass', 'button', 318, '', 0, 'admin', '2021-03-16 19:25:05', 'admin', '2021-03-16 19:25:05', 1, '_self');
INSERT INTO `permission` VALUES (323, '退租申请驳回', '/admin/order/offLeaseApplyReject', 'button', 318, '', 0, 'admin', '2021-03-16 19:25:36', 'admin', '2021-03-16 19:25:36', 1, '_self');
INSERT INTO `permission` VALUES (324, '订单合同查看', '/order/agreement', 'button', 318, '', 0, 'admin', '2021-03-16 19:26:01', 'admin', '2021-03-16 19:26:47', 1, '_self');
INSERT INTO `permission` VALUES (325, '合同下载', '/order/agreement/download', 'button', 318, '', 0, 'admin', '2021-03-16 19:26:32', 'admin', '2021-03-16 19:26:32', 1, '_self');
INSERT INTO `permission` VALUES (326, '订单创建', '/order/create', 'button', 318, '', 0, 'admin', '2021-03-16 19:27:20', 'admin', '2021-03-16 19:27:20', 1, '_self');
INSERT INTO `permission` VALUES (327, '收支明细', '/admin/financeRecord', 'menu', 0, 'fa fa-dollar', 0, 'admin', '2021-03-16 19:28:34', 'admin', '2021-03-16 19:40:01', 80, '_self');
COMMIT;

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cate_id` bigint(20) unsigned NOT NULL COMMENT '分类ID',
  `post_content` longtext COMMENT '房子描述信息',
  `post_status` int(11) DEFAULT NULL COMMENT '房子状态',
  `post_summary` varchar(2000) DEFAULT NULL COMMENT '房子描述摘要',
  `post_thumbnail` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `post_title` varchar(255) DEFAULT NULL COMMENT '标题',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_by` varchar(255) DEFAULT 'admin' COMMENT '创建人',
  `update_by` varchar(255) DEFAULT 'admin' COMMENT '更新人',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标志',
  `number` varchar(100) DEFAULT NULL COMMENT '房间号',
  `img_url` varchar(1000) DEFAULT NULL COMMENT '轮播图',
  `post_editor` varchar(2000) DEFAULT NULL COMMENT '轮播图编辑器',
  `city_id` bigint(20) unsigned DEFAULT NULL COMMENT '城市iD',
  `room_count` int(11) DEFAULT NULL COMMENT '卧室数',
  `toilet_count` int(11) DEFAULT NULL COMMENT '卫生间数',
  `area` decimal(10,2) DEFAULT NULL COMMENT '面积',
  `user_id` bigint(20) unsigned DEFAULT NULL COMMENT '用户ID',
  `month_price` int(11) DEFAULT NULL COMMENT '月租金额',
  `day_price` int(10) DEFAULT NULL COMMENT '日租金额',
  `deposit` int(11) DEFAULT NULL COMMENT '押金',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_post_cate_id` (`cate_id`),
  KEY `fk_post_city_id` (`city_id`),
  KEY `fk_user_user_id` (`user_id`),
  CONSTRAINT `fk_post_cate_id` FOREIGN KEY (`cate_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_post_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of post
-- ----------------------------
BEGIN;
INSERT INTO `post` VALUES (1, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋1单元101室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (2, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋1单元102室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (3, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋1单元103室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (4, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋1单元104室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (5, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋1单元105室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (6, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋1单元201室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (7, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋1单元202室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (8, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋1单元203室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (9, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋1单元204室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (10, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋1单元205室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (11, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋1单元301室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (12, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋1单元302室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (13, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋1单元303室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (14, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋1单元304室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (15, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋1单元305室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (16, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋2单元101室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (17, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋2单元102室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (18, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋2单元103室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (19, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋2单元104室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (20, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋2单元105室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (21, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋2单元201室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (22, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋2单元202室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (23, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋2单元203室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (24, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋2单元204室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (25, 1, '<p>此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....</p>', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 22:33:07', 'admin', 'admin', 0, '13栋2单元205室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p><p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p><p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p><p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p><p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p><p><img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\" class=\"fr-fic fr-dii\"><img src=\"/static/front/img/room/3.png\" width=\"100px;\" class=\"fr-fic fr-dii\"><img src=\"/static/front/img/room/4.png\" width=\"100px;\" class=\"fr-fic fr-dii\"><img src=\"/static/front/img/room/5.png\" width=\"100px;\" class=\"fr-fic fr-dii\"></p>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (26, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋2单元301室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (27, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋2单元302室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (28, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋2单元303室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (29, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋2单元304室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (30, 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '13栋2单元305室', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 3, 1, 100.00, 5, 6000, 200, 6000);
INSERT INTO `post` VALUES (31, 2, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 1, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '12栋2单元101室A卧', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 1, 1, 20.00, 4, 2370, 79, 2370);
INSERT INTO `post` VALUES (32, 2, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '12栋2单元101室B卧', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 1, 1, 20.00, 4, 2370, 79, 2370);
INSERT INTO `post` VALUES (33, 2, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', 0, '此房户型方正，采光好。周边配套齐全，交通方便。\n小区邻近三号线吉祥站，楼下公交站台林立。\n带全套家电。\n....\n										', '/static/front/img/room/1.jpg', '华策中心城 三号线 吉祥站 花园小区', '2020-12-06 16:57:20', '2021-03-16 19:01:46', 'admin', 'admin', 0, '12栋2单元101室C卧', '/static/front/img/room/1.jpg,/static/front/img/room/2.jpeg,/static/front/img/room/3.png,/static/front/img/room/4.png,/static/front/img/room/5.png', '<p><img src=\"/static/front/img/room/1.jpg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/2.jpeg\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/3.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/4.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<p><img src=\"/static/front/img/room/5.png\" style=\"width: 100px;\" class=\"fr-fic fr-dib\"></p>\n<img src=\"/static/front/img/room/2.jpeg\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/3.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/4.png\" width=\"100px;\"/>\n<img src=\"/static/front/img/room/5.png\" width=\"100px;\"/>', 1, 1, 1, 20.00, 4, 2370, 79, 2370);
COMMIT;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `level` int(1) NOT NULL,
  `del_flag` int(1) DEFAULT '0',
  `create_by` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(20) DEFAULT NULL,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `is_register_default` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES (1, 'admin', '管理员', 10, 0, NULL, '2020-02-05 18:54:23', NULL, '2020-03-08 13:31:39', 0);
INSERT INTO `role` VALUES (2, 'user', '用户', 1, 1, NULL, '2020-02-05 18:54:29', NULL, '2021-03-16 19:33:34', 1);
INSERT INTO `role` VALUES (3, 'customer', '租客', 1, 0, NULL, '2021-03-16 19:05:57', NULL, '2021-03-16 19:05:57', 0);
INSERT INTO `role` VALUES (4, 'owner', '房东', 2, 0, NULL, '2021-03-16 19:06:10', NULL, '2021-03-16 19:06:10', 0);
COMMIT;

-- ----------------------------
-- Table structure for role_permission_ref
-- ----------------------------
DROP TABLE IF EXISTS `role_permission_ref`;
CREATE TABLE `role_permission_ref` (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  `del_flag` int(1) DEFAULT '0',
  `create_by` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(20) DEFAULT NULL,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2886 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of role_permission_ref
-- ----------------------------
BEGIN;
INSERT INTO `role_permission_ref` VALUES (2, 1, 0, NULL, '2020-12-06 15:21:39', NULL, '2020-12-06 15:21:39', 2487);
INSERT INTO `role_permission_ref` VALUES (2, 106, 0, NULL, '2020-12-06 15:21:39', NULL, '2020-12-06 15:21:39', 2488);
INSERT INTO `role_permission_ref` VALUES (2, 169, 0, NULL, '2020-12-06 15:21:39', NULL, '2020-12-06 15:21:39', 2489);
INSERT INTO `role_permission_ref` VALUES (2, 6, 0, NULL, '2020-12-06 15:21:39', NULL, '2020-12-06 15:21:39', 2490);
INSERT INTO `role_permission_ref` VALUES (2, 171, 0, NULL, '2020-12-06 15:21:39', NULL, '2020-12-06 15:21:39', 2491);
INSERT INTO `role_permission_ref` VALUES (2, 140, 0, NULL, '2020-12-06 15:21:39', NULL, '2020-12-06 15:21:39', 2497);
INSERT INTO `role_permission_ref` VALUES (2, 141, 0, NULL, '2020-12-06 15:21:39', NULL, '2020-12-06 15:21:39', 2498);
INSERT INTO `role_permission_ref` VALUES (2, 142, 0, NULL, '2020-12-06 15:21:39', NULL, '2020-12-06 15:21:39', 2499);
INSERT INTO `role_permission_ref` VALUES (2, 144, 0, NULL, '2020-12-06 15:21:39', NULL, '2020-12-06 15:21:39', 2500);
INSERT INTO `role_permission_ref` VALUES (2, 145, 0, NULL, '2020-12-06 15:21:39', NULL, '2020-12-06 15:21:39', 2501);
INSERT INTO `role_permission_ref` VALUES (2, 132, 0, NULL, '2020-12-06 15:21:39', NULL, '2020-12-06 15:21:39', 2506);
INSERT INTO `role_permission_ref` VALUES (2, 143, 0, NULL, '2020-12-06 15:21:39', NULL, '2020-12-06 15:21:39', 2507);
INSERT INTO `role_permission_ref` VALUES (2, 146, 0, NULL, '2020-12-06 15:21:39', NULL, '2020-12-06 15:21:39', 2508);
INSERT INTO `role_permission_ref` VALUES (2, 120, 0, NULL, '2020-12-06 15:21:39', NULL, '2020-12-06 15:21:39', 2517);
INSERT INTO `role_permission_ref` VALUES (2, 200, 0, NULL, '2020-12-06 15:21:39', NULL, '2020-12-06 15:21:39', 2518);
INSERT INTO `role_permission_ref` VALUES (2, 82, 0, NULL, '2020-12-06 15:21:39', NULL, '2020-12-06 15:21:39', 2519);
INSERT INTO `role_permission_ref` VALUES (2, 83, 0, NULL, '2020-12-06 15:21:39', NULL, '2020-12-06 15:21:39', 2520);
INSERT INTO `role_permission_ref` VALUES (4, 1, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2793);
INSERT INTO `role_permission_ref` VALUES (4, 106, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2794);
INSERT INTO `role_permission_ref` VALUES (4, 169, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2795);
INSERT INTO `role_permission_ref` VALUES (4, 171, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2796);
INSERT INTO `role_permission_ref` VALUES (4, 6, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2797);
INSERT INTO `role_permission_ref` VALUES (4, 308, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2798);
INSERT INTO `role_permission_ref` VALUES (4, 140, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2799);
INSERT INTO `role_permission_ref` VALUES (4, 141, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2800);
INSERT INTO `role_permission_ref` VALUES (4, 142, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2801);
INSERT INTO `role_permission_ref` VALUES (4, 144, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2802);
INSERT INTO `role_permission_ref` VALUES (4, 145, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2803);
INSERT INTO `role_permission_ref` VALUES (4, 132, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2804);
INSERT INTO `role_permission_ref` VALUES (4, 143, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2805);
INSERT INTO `role_permission_ref` VALUES (4, 146, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2806);
INSERT INTO `role_permission_ref` VALUES (4, 318, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2807);
INSERT INTO `role_permission_ref` VALUES (4, 319, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2808);
INSERT INTO `role_permission_ref` VALUES (4, 320, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2809);
INSERT INTO `role_permission_ref` VALUES (4, 321, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2810);
INSERT INTO `role_permission_ref` VALUES (4, 322, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2811);
INSERT INTO `role_permission_ref` VALUES (4, 323, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2812);
INSERT INTO `role_permission_ref` VALUES (4, 324, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2813);
INSERT INTO `role_permission_ref` VALUES (4, 325, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2814);
INSERT INTO `role_permission_ref` VALUES (4, 327, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2815);
INSERT INTO `role_permission_ref` VALUES (4, 120, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2816);
INSERT INTO `role_permission_ref` VALUES (4, 200, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2817);
INSERT INTO `role_permission_ref` VALUES (4, 82, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2818);
INSERT INTO `role_permission_ref` VALUES (4, 83, 0, NULL, '2021-03-16 19:36:44', NULL, '2021-03-16 19:36:44', 2819);
INSERT INTO `role_permission_ref` VALUES (3, 1, 0, NULL, '2021-03-16 19:37:04', NULL, '2021-03-16 19:37:04', 2820);
INSERT INTO `role_permission_ref` VALUES (3, 106, 0, NULL, '2021-03-16 19:37:04', NULL, '2021-03-16 19:37:04', 2821);
INSERT INTO `role_permission_ref` VALUES (3, 169, 0, NULL, '2021-03-16 19:37:04', NULL, '2021-03-16 19:37:04', 2822);
INSERT INTO `role_permission_ref` VALUES (3, 171, 0, NULL, '2021-03-16 19:37:04', NULL, '2021-03-16 19:37:04', 2823);
INSERT INTO `role_permission_ref` VALUES (3, 6, 0, NULL, '2021-03-16 19:37:04', NULL, '2021-03-16 19:37:04', 2824);
INSERT INTO `role_permission_ref` VALUES (3, 318, 0, NULL, '2021-03-16 19:37:04', NULL, '2021-03-16 19:37:04', 2825);
INSERT INTO `role_permission_ref` VALUES (3, 319, 0, NULL, '2021-03-16 19:37:04', NULL, '2021-03-16 19:37:04', 2826);
INSERT INTO `role_permission_ref` VALUES (3, 320, 0, NULL, '2021-03-16 19:37:04', NULL, '2021-03-16 19:37:04', 2827);
INSERT INTO `role_permission_ref` VALUES (3, 321, 0, NULL, '2021-03-16 19:37:04', NULL, '2021-03-16 19:37:04', 2828);
INSERT INTO `role_permission_ref` VALUES (3, 322, 0, NULL, '2021-03-16 19:37:04', NULL, '2021-03-16 19:37:04', 2829);
INSERT INTO `role_permission_ref` VALUES (3, 323, 0, NULL, '2021-03-16 19:37:04', NULL, '2021-03-16 19:37:04', 2830);
INSERT INTO `role_permission_ref` VALUES (3, 324, 0, NULL, '2021-03-16 19:37:04', NULL, '2021-03-16 19:37:04', 2831);
INSERT INTO `role_permission_ref` VALUES (3, 325, 0, NULL, '2021-03-16 19:37:04', NULL, '2021-03-16 19:37:04', 2832);
INSERT INTO `role_permission_ref` VALUES (3, 326, 0, NULL, '2021-03-16 19:37:04', NULL, '2021-03-16 19:37:04', 2833);
INSERT INTO `role_permission_ref` VALUES (3, 327, 0, NULL, '2021-03-16 19:37:04', NULL, '2021-03-16 19:37:04', 2834);
INSERT INTO `role_permission_ref` VALUES (3, 120, 0, NULL, '2021-03-16 19:37:04', NULL, '2021-03-16 19:37:04', 2835);
INSERT INTO `role_permission_ref` VALUES (3, 200, 0, NULL, '2021-03-16 19:37:04', NULL, '2021-03-16 19:37:04', 2836);
INSERT INTO `role_permission_ref` VALUES (3, 82, 0, NULL, '2021-03-16 19:37:04', NULL, '2021-03-16 19:37:04', 2837);
INSERT INTO `role_permission_ref` VALUES (3, 83, 0, NULL, '2021-03-16 19:37:04', NULL, '2021-03-16 19:37:04', 2838);
INSERT INTO `role_permission_ref` VALUES (1, 1, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2839);
INSERT INTO `role_permission_ref` VALUES (1, 106, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2840);
INSERT INTO `role_permission_ref` VALUES (1, 169, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2841);
INSERT INTO `role_permission_ref` VALUES (1, 171, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2842);
INSERT INTO `role_permission_ref` VALUES (1, 6, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2843);
INSERT INTO `role_permission_ref` VALUES (1, 308, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2844);
INSERT INTO `role_permission_ref` VALUES (1, 140, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2845);
INSERT INTO `role_permission_ref` VALUES (1, 141, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2846);
INSERT INTO `role_permission_ref` VALUES (1, 142, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2847);
INSERT INTO `role_permission_ref` VALUES (1, 144, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2848);
INSERT INTO `role_permission_ref` VALUES (1, 145, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2849);
INSERT INTO `role_permission_ref` VALUES (1, 132, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2850);
INSERT INTO `role_permission_ref` VALUES (1, 143, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2851);
INSERT INTO `role_permission_ref` VALUES (1, 146, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2852);
INSERT INTO `role_permission_ref` VALUES (1, 137, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2853);
INSERT INTO `role_permission_ref` VALUES (1, 147, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2854);
INSERT INTO `role_permission_ref` VALUES (1, 148, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2855);
INSERT INTO `role_permission_ref` VALUES (1, 149, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2856);
INSERT INTO `role_permission_ref` VALUES (1, 318, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2857);
INSERT INTO `role_permission_ref` VALUES (1, 327, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2858);
INSERT INTO `role_permission_ref` VALUES (1, 312, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2859);
INSERT INTO `role_permission_ref` VALUES (1, 313, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2860);
INSERT INTO `role_permission_ref` VALUES (1, 314, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2861);
INSERT INTO `role_permission_ref` VALUES (1, 315, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2862);
INSERT INTO `role_permission_ref` VALUES (1, 316, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2863);
INSERT INTO `role_permission_ref` VALUES (1, 70, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2864);
INSERT INTO `role_permission_ref` VALUES (1, 317, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2865);
INSERT INTO `role_permission_ref` VALUES (1, 73, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2866);
INSERT INTO `role_permission_ref` VALUES (1, 74, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2867);
INSERT INTO `role_permission_ref` VALUES (1, 75, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2868);
INSERT INTO `role_permission_ref` VALUES (1, 76, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2869);
INSERT INTO `role_permission_ref` VALUES (1, 120, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2870);
INSERT INTO `role_permission_ref` VALUES (1, 200, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2871);
INSERT INTO `role_permission_ref` VALUES (1, 82, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2872);
INSERT INTO `role_permission_ref` VALUES (1, 83, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2873);
INSERT INTO `role_permission_ref` VALUES (1, 91, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2874);
INSERT INTO `role_permission_ref` VALUES (1, 127, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2875);
INSERT INTO `role_permission_ref` VALUES (1, 111, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2876);
INSERT INTO `role_permission_ref` VALUES (1, 92, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2877);
INSERT INTO `role_permission_ref` VALUES (1, 93, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2878);
INSERT INTO `role_permission_ref` VALUES (1, 94, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2879);
INSERT INTO `role_permission_ref` VALUES (1, 95, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2880);
INSERT INTO `role_permission_ref` VALUES (1, 128, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2881);
INSERT INTO `role_permission_ref` VALUES (1, 110, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2882);
INSERT INTO `role_permission_ref` VALUES (1, 96, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2883);
INSERT INTO `role_permission_ref` VALUES (1, 97, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2884);
INSERT INTO `role_permission_ref` VALUES (1, 98, 0, NULL, '2021-03-16 19:39:13', NULL, '2021-03-16 19:39:13', 2885);
COMMIT;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '租客ID',
  `post_id` bigint(20) unsigned NOT NULL COMMENT '房子ID',
  `start_date` datetime NOT NULL COMMENT '入住日期',
  `end_date` datetime DEFAULT NULL COMMENT '正常退租日期',
  `status` int(1) NOT NULL COMMENT '状态',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_by` varchar(255) DEFAULT 'admin' COMMENT '创建人',
  `update_by` varchar(255) DEFAULT 'admin' COMMENT '更新人',
  `del_flag` int(1) NOT NULL DEFAULT '0' COMMENT '删除标志',
  `owner_user_id` bigint(20) unsigned DEFAULT NULL COMMENT '房东ID',
  `off_lease_date` datetime DEFAULT NULL COMMENT '退租日期',
  `off_lease_price` decimal(10,2) DEFAULT NULL COMMENT '退租价格',
  `deposit` int(11) DEFAULT NULL COMMENT '押金',
  `day_price` int(11) NOT NULL COMMENT '日租金',
  `day_num` int(11) DEFAULT NULL COMMENT '租住天数',
  `total_amount` int(11) DEFAULT NULL COMMENT '总租金=租住天数x日租金',
  `off_lease_status` int(11) DEFAULT NULL COMMENT '退租状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_t_order_post_id` (`post_id`),
  KEY `fk_t_order_user_id` (`user_id`),
  KEY `fk_t_order_owner_user_id` (`owner_user_id`),
  CONSTRAINT `fk_t_order_owner_user_id` FOREIGN KEY (`owner_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_t_order_post_id` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_t_order_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_order
-- ----------------------------
BEGIN;
INSERT INTO `t_order` VALUES (1, 9, 2, '2021-03-16 21:37:37', '2025-12-28 00:00:00', 1, '2021-03-16 21:37:37', '2021-03-16 22:07:59', 'admin', 'admin', 0, 5, '2021-03-16 22:08:12', 349400.00, 6000, 200, 1747, 349400, -1);
INSERT INTO `t_order` VALUES (2, 2, 1, '2021-03-16 22:21:47', '2022-09-10 00:00:00', 1, '2021-03-16 22:21:47', '2021-03-16 22:21:47', 'admin', 'admin', 0, 5, NULL, NULL, 6000, 200, 542, 108400, NULL);
INSERT INTO `t_order` VALUES (3, 2, 11, '2021-03-16 22:22:28', '2023-02-04 00:00:00', 1, '2021-03-16 22:22:28', '2021-03-16 22:22:28', 'admin', 'admin', 0, 5, NULL, NULL, 6000, 200, 689, 137800, NULL);
INSERT INTO `t_order` VALUES (4, 2, 12, '2021-02-16 22:27:52', '2021-08-27 00:00:00', 2, '2021-02-16 22:27:52', '2021-03-16 22:30:11', 'admin', 'admin', 0, 5, '2021-03-16 22:29:57', 32600.00, 6000, 200, 163, 32600, 1);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_avatar` varchar(255) DEFAULT NULL,
  `user_desc` varchar(255) DEFAULT NULL,
  `user_display_name` varchar(255) DEFAULT NULL,
  `id_card` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_pass` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(255) DEFAULT 'admin',
  `update_by` varchar(255) DEFAULT 'admin',
  `del_flag` int(1) DEFAULT '0',
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  FULLTEXT KEY `full_index` (`user_display_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, '/static/images/avatar/9.jpeg', '人生得意须尽欢', '管理员', '123456789012345679', 'admin', 'a021a665f503979c06f50b8de66a4218', 0, '2019-01-24 00:07:33', '2021-02-25 16:56:27', 'admin', 'admin', 0, '13512341234', '847064@qq.com');
INSERT INTO `user` VALUES (2, '/static/images/avatar/4.jpeg', '2222', '张三', '440116199905311516', 'zhangsan', 'a021a665f503979c06f50b8de66a4218', 0, '2020-12-06 16:21:54', '2021-03-16 19:33:15', 'admin', 'admin', 0, '13512341232', 'abc3d@qq.com');
INSERT INTO `user` VALUES (3, '/static/images/avatar/35.jpeg', '', '李四', '44018319990831945X', 'lisi', 'a021a665f503979c06f50b8de66a4218', 0, '2020-12-06 16:23:08', '2021-03-16 19:33:07', 'admin', 'admin', 0, '13512341231', 'abc4d@qq.com');
INSERT INTO `user` VALUES (4, '/static/images/avatar/22.jpeg', '', '王五', '440103199811305690', 'wangwu', 'a021a665f503979c06f50b8de66a4218', 0, '2020-12-06 16:23:43', '2021-03-16 19:32:58', 'admin', 'admin', 0, '13512341230', 'abc1@qq.com');
INSERT INTO `user` VALUES (5, '/static/images/avatar/1.jpeg', '', '马芸', '440114198909301078', 'mayun', 'a021a665f503979c06f50b8de66a4218', 0, '2020-12-06 16:24:33', '2021-03-16 19:32:42', 'admin', 'admin', 0, '13512341238', 'abc2d@qq.com');
INSERT INTO `user` VALUES (6, '/static/images/avatar/7.jpeg', '22', 'saysky22', '123123123123120', 'saysky22', '3bf5efa64c8ece7367d6b6139c28cb8c', 0, '2021-01-11 14:10:30', '2021-01-11 15:32:41', 'admin', 'admin', 0, '13512341238', 'saysky22@qq.com');
INSERT INTO `user` VALUES (7, '/static/images/avatar/30.jpeg', '1111', '111', '123123123123129', '11111111111', '33d90dbaf32fef660bb8967c8a2b1e9f', 0, '2021-01-11 14:12:45', '2021-01-11 14:12:45', 'admin', 'admin', 0, '15779216424', '111');
INSERT INTO `user` VALUES (8, '/static/images/avatar/24.jpeg', NULL, '韩信', '123123123122128', 'hanxin', 'a021a665f503979c06f50b8de66a4218', 0, '2021-03-16 21:28:46', '2021-03-16 21:28:46', 'admin', 'admin', 0, NULL, NULL);
INSERT INTO `user` VALUES (9, '/static/images/avatar/30.jpeg', '', '刘邦', '123123123122188', 'liubang', 'a021a665f503979c06f50b8de66a4218', 0, '2021-03-16 21:30:55', '2021-03-16 21:30:55', 'admin', 'admin', 0, '', '');
COMMIT;

-- ----------------------------
-- Table structure for user_role_ref
-- ----------------------------
DROP TABLE IF EXISTS `user_role_ref`;
CREATE TABLE `user_role_ref` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `del_flag` int(1) DEFAULT '0',
  `create_by` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(20) DEFAULT NULL,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_role_ref
-- ----------------------------
BEGIN;
INSERT INTO `user_role_ref` VALUES (1, 1, 0, NULL, '2020-02-08 13:56:55', NULL, '2020-02-08 13:56:55', 4);
INSERT INTO `user_role_ref` VALUES (10, 2, 0, NULL, '2020-03-11 21:38:51', NULL, '2020-03-11 21:38:51', 14);
INSERT INTO `user_role_ref` VALUES (11, 2, 0, NULL, '2020-03-11 21:40:54', NULL, '2020-03-11 21:40:54', 15);
INSERT INTO `user_role_ref` VALUES (12, 2, 0, NULL, '2020-03-11 21:41:56', NULL, '2020-03-11 21:41:56', 16);
INSERT INTO `user_role_ref` VALUES (13, 2, 0, NULL, '2020-03-11 21:42:51', NULL, '2020-03-11 21:42:51', 17);
INSERT INTO `user_role_ref` VALUES (14, 2, 0, NULL, '2020-03-11 21:44:44', NULL, '2020-03-11 21:44:44', 18);
INSERT INTO `user_role_ref` VALUES (16, 2, 0, NULL, '2020-03-12 18:18:57', NULL, '2020-03-12 18:18:57', 19);
INSERT INTO `user_role_ref` VALUES (17, 2, 0, NULL, '2020-04-05 23:18:01', NULL, '2020-04-05 23:18:01', 20);
INSERT INTO `user_role_ref` VALUES (19, 2, 0, NULL, '2020-04-07 00:28:15', NULL, '2020-04-07 00:28:15', 24);
INSERT INTO `user_role_ref` VALUES (20, 2, 0, NULL, '2020-04-08 00:44:44', NULL, '2020-04-08 00:44:44', 25);
INSERT INTO `user_role_ref` VALUES (21, 2, 0, NULL, '2020-05-10 13:22:12', NULL, '2020-12-05 18:53:29', 26);
INSERT INTO `user_role_ref` VALUES (24, 2, 0, NULL, '2020-10-17 15:11:14', NULL, '2020-12-05 18:53:29', 29);
INSERT INTO `user_role_ref` VALUES (7, 3, 0, NULL, '2021-03-16 19:32:14', NULL, '2021-03-16 19:32:14', 39);
INSERT INTO `user_role_ref` VALUES (6, 3, 0, NULL, '2021-03-16 19:32:32', NULL, '2021-03-16 19:32:32', 40);
INSERT INTO `user_role_ref` VALUES (4, 3, 0, NULL, '2021-03-16 19:32:58', NULL, '2021-03-16 19:32:58', 42);
INSERT INTO `user_role_ref` VALUES (3, 3, 0, NULL, '2021-03-16 19:33:07', NULL, '2021-03-16 19:33:07', 43);
INSERT INTO `user_role_ref` VALUES (2, 3, 0, NULL, '2021-03-16 19:33:15', NULL, '2021-03-16 19:33:15', 44);
INSERT INTO `user_role_ref` VALUES (8, 4, 0, NULL, '2021-03-16 21:28:46', NULL, '2021-03-16 21:28:46', 45);
INSERT INTO `user_role_ref` VALUES (9, 3, 0, NULL, '2021-03-16 21:30:55', NULL, '2021-03-16 21:30:55', 46);
INSERT INTO `user_role_ref` VALUES (5, 4, 0, NULL, '2021-03-16 22:17:41', NULL, '2021-03-16 22:17:41', 47);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
