/*
Navicat MySQL Data Transfer

Source Server         : cxw
Source Server Version : 80020
Source Host           : localhost:3306
Source Database       : ssm_bbms

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2021-06-26 17:36:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bookmanage
-- ----------------------------
DROP TABLE IF EXISTS `bookmanage`;
CREATE TABLE `bookmanage` (
  `bId` int NOT NULL AUTO_INCREMENT,
  `bookName` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `inventory` int DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`bId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookmanage
-- ----------------------------
INSERT INTO `bookmanage` VALUES ('1', '测试图书1', '测试1', '100', '799');
INSERT INTO `bookmanage` VALUES ('2', '测试2', '测试2', '5', '45645');
INSERT INTO `bookmanage` VALUES ('4', '测试图书', '测试', '10', '79');
INSERT INTO `bookmanage` VALUES ('5', '测试图书', '测试', '10', '79');

-- ----------------------------
-- Table structure for tbsyslog
-- ----------------------------
DROP TABLE IF EXISTS `tbsyslog`;
CREATE TABLE `tbsyslog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `logId` varchar(255) DEFAULT NULL,
  `accessDate` datetime DEFAULT NULL,
  `requestType` varchar(255) DEFAULT NULL,
  `accessInterface` varchar(255) DEFAULT NULL,
  `interfaceParams` text,
  `accessSource` varchar(255) DEFAULT NULL,
  `accessIp` varchar(255) DEFAULT NULL,
  `executeTime` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbsyslog
-- ----------------------------
INSERT INTO `tbsyslog` VALUES ('1', 'cd8f6a0787e44a5b877da0b96ef01c25', '2021-04-11 08:17:58', 'GET', '/ssm_war/addBook', '[{bookName=测试图书, author=测试, inventory=10, price=79}]', 'UNKNOWN-UNKNOWN(null)', '0:0:0:0:0:0:0:1', '406');
INSERT INTO `tbsyslog` VALUES ('2', 'bfd6729940b94cd980fdad12bac68a35', '2021-04-22 08:34:49', 'POST', '/ssm_war/queryUser', '[{}]', 'UNKNOWN-UNKNOWN(null)', '0:0:0:0:0:0:0:1', '561');
INSERT INTO `tbsyslog` VALUES ('3', '0e703b0112874a12b2b08d5c8f282943', '2021-04-22 08:35:59', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=admin}]', 'UNKNOWN-UNKNOWN(null)', '0:0:0:0:0:0:0:1', '8');
INSERT INTO `tbsyslog` VALUES ('4', 'fa2fdb776f9249df80bb15fca18c284e', '2021-04-22 08:36:29', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'UNKNOWN-UNKNOWN(null)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('5', '1fa0fb585eb9420b8b400deb8f496946', '2021-04-22 09:45:12', 'POST', '/ssm_war/queryUser', '[{username=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '449');
INSERT INTO `tbsyslog` VALUES ('6', 'c7a332c3ae8144c1853f328ebd8fb29c', '2021-04-22 09:45:39', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('7', '0f7edc5c46ea418fb10400b8ea9df704', '2021-04-22 09:45:40', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('8', 'b89edddb303646f8a5476a8aee5b9483', '2021-04-22 09:47:30', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('9', '8df39bee15fa45779e4f024a5657d2d1', '2021-04-22 09:47:32', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('10', 'c52e69d2e7e24636bfa4356fde01340e', '2021-04-22 09:50:46', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('11', '24d678cb651e4034823d3f1c12e4816a', '2021-04-22 09:54:02', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('12', 'e43c4fe5b6a643729275bc555f084b85', '2021-04-22 09:57:00', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('13', '043f9800f30542d1a029c76fa725457b', '2021-04-22 09:57:51', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('14', 'c9bc01ee2ad642f9a1cda965e0587988', '2021-04-22 09:57:54', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('15', 'cdbcad99b3ea45bab3dbee2bc9308735', '2021-04-22 09:58:17', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('16', 'd949e42130714b049da901159b8ccf98', '2021-04-22 09:58:17', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('17', '46bbde11f1b44bc8bcb14fa71f4203c3', '2021-04-22 09:58:20', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('18', 'efcef2a595c24da9b4f0556c974d7ced', '2021-04-22 09:58:26', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('19', '150738abebdc4b3f88071a305532b73e', '2021-04-22 09:58:51', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('20', '724ee2a9bf31499e9211d2b50520cba1', '2021-04-22 09:58:53', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '3');
INSERT INTO `tbsyslog` VALUES ('21', 'e48371c129f0433f940386231e319b94', '2021-04-22 09:59:39', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('22', '382a3213f22643328de52e5144cbf2d9', '2021-04-22 10:04:55', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456, username=admin}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('23', '5a2c4730960b4e3781cf57d0a526d40b', '2021-04-22 10:05:14', 'POST', '/ssm_war/queryUser', '[{userName=, password=123456, username=admin}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('24', '285e1361a1084d6884ef8a1669f48b34', '2021-04-22 10:07:06', 'POST', '/ssm_war/queryUser', '[{userName=, password=123456, username=admin}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('25', '8095d33dcab844389972541c91dda031', '2021-04-22 10:07:46', 'POST', '/ssm_war/queryUser', '[{userName=, password=54646341, username=fdasfa}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('26', '10422a5b930d4762ab5a98dee7509d5e', '2021-04-22 10:07:58', 'POST', '/ssm_war/queryUser', '[{userName=, password=54646341, username=fdasfa}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('27', '1fb80cb006304cf993cde98fdb9119a5', '2021-04-22 10:08:03', 'POST', '/ssm_war/queryUser', '[{userName=, password=}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('28', '81196589b6a443378e60c5914adcfd93', '2021-04-22 10:08:17', 'POST', '/ssm_war/queryUser', '[{userName=admin2, password=123456}]', 'UNKNOWN-UNKNOWN(null)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('29', '1dbf3f584b4947a89befcc044033eedc', '2021-04-22 10:08:25', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'UNKNOWN-UNKNOWN(null)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('30', 'ddb46d25b0a347148bf830a44987767c', '2021-04-22 10:10:22', 'POST', '/ssm_war/queryUser', '[{userName=, password=123456456, username=admin}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('31', '79dac520580e44ca956d153cf3140293', '2021-04-22 10:10:33', 'POST', '/ssm_war/queryUser', '[{userName=, password=12345648674896, username=adminfdfasfa}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('32', '6f70a707da8747d1a2a3f0c2a206e593', '2021-04-22 10:10:57', 'POST', '/ssm_war/queryUser', '[{userName=1231, password=fdsafaf, username=dafjlkaj}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '0');
INSERT INTO `tbsyslog` VALUES ('33', '73244b475f454fb9b6bf5367d5a74c5d', '2021-04-22 10:12:08', 'POST', '/ssm_war/queryUser', '[{userName=1231, password=fdsfsd, username=fdsahfjka}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('34', 'a05a4bc770204c6080f76f8624d72124', '2021-04-22 10:12:40', 'POST', '/ssm_war/queryUser', '[{userName=1231, password=fdsafaf}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('35', '3ea50cb0b1234608b793f0c92680d19b', '2021-04-22 10:13:47', 'POST', '/ssm_war/queryUser', '[{userName=fdasf, password=454564}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('36', 'b191ee94d70a43e197182b323796e357', '2021-04-22 10:14:08', 'POST', '/ssm_war/queryUser', '[{userName=fdfaf, password=465456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('37', 'ad6828ca0a274c8aa82f2699b7739959', '2021-04-22 10:15:00', 'POST', '/ssm_war/queryUser', '[{userName=, password=}]', 'UNKNOWN-UNKNOWN(null)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('38', '91161671cd8d41ae82c709097aae411d', '2021-04-22 10:15:07', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'UNKNOWN-UNKNOWN(null)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('39', 'b6278112118e47e5a678a6c9cdf02718', '2021-04-22 10:16:27', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('40', 'f81b4e3697214977bd0f41284cd7c162', '2021-04-22 10:16:47', 'POST', '/ssm_war/queryUser', '[{userName=, password=}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('41', 'b86db5dcb90748a88e9b870391712867', '2021-04-22 10:16:53', 'POST', '/ssm_war/queryUser', '[{userName=, password=}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('42', '96388a23f6c54208990ec9eb61c09edb', '2021-04-22 10:17:43', 'POST', '/ssm_war/queryUser', '[{userName=ajfhkja, password=fdosikjf}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('43', '669c360045ee4ce3b825638d711aba9b', '2021-04-22 10:18:12', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=4564}]', 'UNKNOWN-UNKNOWN(null)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('44', '1c6be18a45464890919252a0861a887a', '2021-04-22 10:18:21', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'UNKNOWN-UNKNOWN(null)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('45', 'f9d6e915e3184cf0b79132c26d98732d', '2021-04-22 10:18:50', 'POST', '/ssm_war/queryUser', '[{userName=fdasfjsajl, password=fdsfsd}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('46', '26ada714c5a7475692b1c6040d5bde9e', '2021-04-22 10:18:58', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('47', '36f9ef331d9f4a9cbf0057d4a2688689', '2021-04-22 10:19:03', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('48', '0543e463d73948c69cc8ec035f7853f4', '2021-04-22 10:20:23', 'POST', '/ssm_war/queryUser', '[{userName=fdasfasfa, password=fdsfsdfs}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('49', '7a7b57294e6a438697f6880ec1c42cf2', '2021-04-22 10:20:53', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('50', '65f2053e9bb34f728ed23768ac9cebf4', '2021-04-22 10:21:02', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('51', '149e3e29548c4cdbb38a66f19cddc865', '2021-04-22 10:21:32', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('52', 'cd455195204544999cf6af93836b7196', '2021-04-22 10:22:12', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('53', '60cf21dddc924b6690d948815989d789', '2021-04-22 10:24:15', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('54', '96e8fb2ec93c4cd082eb1cb8af962697', '2021-04-22 10:24:20', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('55', '0488f5b50a444dc1bdf0bf943f695372', '2021-04-22 10:24:49', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('56', '1afdf3dbb9b247dbaffce42bef79a2fb', '2021-04-22 10:25:23', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('57', '5c4439d23acd4fb3804675565b99a17f', '2021-04-22 10:25:26', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=12345646545}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('58', '5dbd7a4fed6646aeb3c5d717e0dae734', '2021-04-22 10:25:36', 'POST', '/ssm_war/queryUser', '[{userName=dfhkajhf, password=fdjklsj}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('59', '1fa7fa06be70445abdb199d145dce495', '2021-04-22 10:26:05', 'POST', '/ssm_war/queryUser', '[{userName=dfhkajhf, password=fdjklsj}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '407');
INSERT INTO `tbsyslog` VALUES ('60', '0c1c3e6d9a864adcbe699d912e2f7700', '2021-04-22 10:26:14', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('61', 'f6c7ed7eba774c93aad631016a29a746', '2021-04-22 10:31:39', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('62', '7c58d9af2fdc4b1ebdb7fcf2b6e0d489', '2021-04-23 02:07:32', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=1234856}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '516');
INSERT INTO `tbsyslog` VALUES ('63', 'ab4e87cde493429cb7d352543cacf9c7', '2021-04-23 02:07:38', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('64', '8171a20d9e274b17bcd7bf9afd0440b9', '2021-04-23 02:36:43', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('65', '79118e6c7ce44283a1501e8fde229443', '2021-04-23 02:36:50', 'POST', '/ssm_war/queryUser', '[{userName=afdsakfjkl, password=1564564}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('66', 'db960c136f4b484eafbfdc70e0fe044c', '2021-04-23 02:36:53', 'POST', '/ssm_war/queryUser', '[{userName=afdsakfjkl, password=1564564}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('67', 'd68225f171cc4323b940ab1dfc72c091', '2021-04-23 02:37:18', 'POST', '/ssm_war/queryUser', '[{userName=fdahfajk, password=456456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('68', '84c7cbb2e421435b9b419b426f04a605', '2021-04-23 02:38:20', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('69', '21529c656c6141aa81de46c95aa756e5', '2021-04-23 02:38:24', 'POST', '/ssm_war/queryUser', '[{userName=, password=}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('70', 'eb6b22532747461ea16151cc85feb2b3', '2021-04-23 02:43:40', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('71', '0df2eb42f4114789814ecaab25676e33', '2021-04-23 02:43:49', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('72', 'b4d477dbb4f34f36a97732558849369e', '2021-04-23 02:44:02', 'POST', '/ssm_war/queryUser', '[{userName=djksafhkdas, password=fdskjlhfa}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('73', '19cf64b2ab9549429f04e1c60b60c41c', '2021-04-23 02:44:07', 'POST', '/ssm_war/queryUser', '[{userName=fdsalfkla, password=fdkjsljfsa}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('74', 'c89f3e2558ad4523a5f14a9bd3d39007', '2021-04-23 02:48:57', 'POST', '/ssm_war/queryUser', '[{userName=中文, password=666666}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('75', '43cd4dbcd4b246979f7df69589c21383', '2021-04-23 09:10:08', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456\'}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '175');
INSERT INTO `tbsyslog` VALUES ('76', '43cd4dbcd4b246979f7df69589c21383', '2021-04-23 09:10:08', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456\'}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '175');
INSERT INTO `tbsyslog` VALUES ('77', '14a22d967ec5495d893d03dfb6ad8fb9', '2021-04-23 09:10:17', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('78', 'ec71d87cbf104c718a0023dfdc24bf5e', '2021-04-23 13:56:09', 'POST', '/ssm_war/queryUser', '[{userName=sfhlkasjf, password=flkdsajf}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '10');
INSERT INTO `tbsyslog` VALUES ('79', '9193b30f53104057b94bf217c58631d2', '2021-04-23 13:57:12', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('80', 'b046850e9b2d4ce4b5fd305ff6cea653', '2021-04-23 14:16:36', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('81', 'ef73cc880e954e6e9909a8db2a9bface', '2021-04-23 14:16:43', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('82', 'b973785aab93450da815b5b79b1019eb', '2021-04-23 14:17:03', 'POST', '/ssm_war/queryUser', '[{userName=, password=}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('83', 'ad79ec2f0cb242db9b23d2ddccc2d59f', '2021-04-23 14:17:24', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('84', '9c7dee7df06b4c93a118a719125341e1', '2021-04-24 02:14:14', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '534');
INSERT INTO `tbsyslog` VALUES ('85', '9e1cab526c57465098237ab5fb65d4f0', '2021-04-24 07:57:55', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '497');
INSERT INTO `tbsyslog` VALUES ('86', 'bcb7252708a349ed967c2d4614147add', '2021-04-24 07:58:01', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('87', '666555218817483a9d38d75cbe412293', '2021-04-24 07:58:08', 'POST', '/ssm_war/queryUser', '[{userName=, password=}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('88', '7fe44a7fb78c45cb8361ed5468e79009', '2021-04-24 07:58:16', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('89', '3fa5a0ab35844eccb8c0f67f6778163e', '2021-04-24 07:58:21', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('90', 'de8b1fcfdc9f4966b0af1907875d7127', '2021-04-24 08:20:17', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('91', '4839b580590a4cd0be8a683432f62791', '2021-04-24 09:12:24', 'GET', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'UNKNOWN-UNKNOWN(null)', '0:0:0:0:0:0:0:1', '89');
INSERT INTO `tbsyslog` VALUES ('92', 'a6ad7eadad054d85a4f5461c4ee664bc', '2021-04-24 09:19:27', 'GET', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'UNKNOWN-UNKNOWN(null)', '0:0:0:0:0:0:0:1', '6');
INSERT INTO `tbsyslog` VALUES ('93', '5454299566aa413dafe17d7794de3d8c', '2021-04-24 09:21:57', 'GET', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10, userName=中}]', 'UNKNOWN-UNKNOWN(null)', '0:0:0:0:0:0:0:1', '14');
INSERT INTO `tbsyslog` VALUES ('94', '975899a4bee548b19693ccade7ddce18', '2021-04-24 09:22:09', 'GET', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'UNKNOWN-UNKNOWN(null)', '0:0:0:0:0:0:0:1', '9');
INSERT INTO `tbsyslog` VALUES ('95', '3ce9e53c1a7f46e38b4f033d9f335209', '2021-04-24 09:26:18', 'GET', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'UNKNOWN-UNKNOWN(null)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('96', 'ead2b80e186a4c2da3f8aaeda4c77f56', '2021-04-24 09:26:26', 'GET', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'UNKNOWN-UNKNOWN(null)', '0:0:0:0:0:0:0:1', '3');
INSERT INTO `tbsyslog` VALUES ('97', '31ec61bf12d8420ab14e3ae6f8524210', '2021-04-24 09:27:20', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('98', '8f87cc4afa9e4020b4602c7883fa3097', '2021-04-24 09:27:23', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '5');
INSERT INTO `tbsyslog` VALUES ('99', '3c46f4cffade48a0b7d3b23b2ae41420', '2021-04-24 09:28:56', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '7');
INSERT INTO `tbsyslog` VALUES ('100', 'e212c9d90a88455ca6bcba93dddb9307', '2021-04-24 09:28:56', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('101', '444f22f1a3ca4083b647be3a13871006', '2021-04-24 09:28:59', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '5');
INSERT INTO `tbsyslog` VALUES ('102', 'd4760e8abf814c5c9dbad63bf53eb378', '2021-04-24 09:29:37', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '3');
INSERT INTO `tbsyslog` VALUES ('103', '00d3e3c4dee740c19b8b3f7e89af31db', '2021-04-24 09:29:40', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('104', 'c2c645543eb24d27a43122a0a93d689e', '2021-04-24 09:30:47', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('105', '842cca7b8e62452886dfc9718bc3929d', '2021-04-24 09:32:00', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('106', 'ccfd75e89a204fe2bc3cbea007be7aab', '2021-04-24 09:32:08', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('107', '1e301bc972454648bef445622fc7967d', '2021-04-24 09:32:12', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('108', '286ff33052154d4198a30af3cfd8db70', '2021-04-24 09:32:21', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('109', '487542c320d645438b7e77a5cf55d062', '2021-04-24 09:33:46', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '3');
INSERT INTO `tbsyslog` VALUES ('110', '387a59c5a79b45289b14fcb80c2a8e7d', '2021-04-24 09:34:24', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('111', '556fa52d37804260b4bb09842e65976a', '2021-04-24 09:35:11', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '3');
INSERT INTO `tbsyslog` VALUES ('112', '5ef9f82e13214409b4427273044a0cd4', '2021-04-24 09:35:51', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('113', 'fcce175231f146ed95d26005220820db', '2021-04-24 09:36:54', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '5');
INSERT INTO `tbsyslog` VALUES ('114', 'ad142eaa674e49d3a933608f6cafe301', '2021-04-24 09:36:57', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('115', '80afc0d9d7e54db3ab9887cd586ddee7', '2021-04-24 09:47:15', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '5');
INSERT INTO `tbsyslog` VALUES ('116', '1b009516613a4f018260d161d5ebf35d', '2021-04-24 09:48:08', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '5');
INSERT INTO `tbsyslog` VALUES ('117', 'efe84d354bc042d4a506cc99a16ce2b5', '2021-04-24 09:48:11', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('118', 'ebe68852ecd14c4b975d564e8b0b43e3', '2021-04-24 09:48:16', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '5');
INSERT INTO `tbsyslog` VALUES ('119', '1132a8aa63fc4fe393ff8cf1d708431d', '2021-04-24 09:48:29', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('120', '4ddf9ecb32d644b9a232ac68eb2d5bc9', '2021-04-24 09:49:07', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('121', '565531f378644a57816aa07b22ee17d6', '2021-04-24 09:49:11', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '6');
INSERT INTO `tbsyslog` VALUES ('122', '11ca716daf4e4f52b137c52576782e27', '2021-04-24 09:49:19', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '6');
INSERT INTO `tbsyslog` VALUES ('123', '4b63447d76d444a0805632dde99c7871', '2021-04-24 09:51:33', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('124', '946f189840aa4563a0226ca3eb8e89a7', '2021-04-24 09:51:33', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '5');
INSERT INTO `tbsyslog` VALUES ('125', '1e893a98032c404a8409d0b37375bb94', '2021-04-24 09:51:34', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('126', '427d6f6cc8e3492aa91425bb81fc371a', '2021-04-24 09:51:55', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('127', 'd7f650c752e34c4690548ac88927142c', '2021-04-24 09:51:55', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '3');
INSERT INTO `tbsyslog` VALUES ('128', '5bc2cdebd6d5443793e3055517bfb0e9', '2021-04-24 09:51:59', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('129', '5b7fb042674a47d7b1f93fab9fa87db5', '2021-04-24 09:52:17', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('130', '911af84a22b54dbbbbf058083738da87', '2021-04-24 09:53:48', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '5');
INSERT INTO `tbsyslog` VALUES ('131', 'd435b453eab84c2690b78c194f560af3', '2021-04-24 09:53:51', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('132', '1373243370d04c94ad6ec10778adfc30', '2021-04-24 09:54:09', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '3');
INSERT INTO `tbsyslog` VALUES ('133', '4b369db4628b4f928c7f5be2094cf334', '2021-04-24 09:54:52', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('134', '3f6a32abe82e4dc0a4fe598d790f3e86', '2021-04-24 09:54:54', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('135', '603b894080524e8b9527ad111a4242db', '2021-04-24 09:54:59', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '3');
INSERT INTO `tbsyslog` VALUES ('136', 'f943b22f6469494fb674c64f1f38751b', '2021-04-24 09:55:02', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '5');
INSERT INTO `tbsyslog` VALUES ('137', '64b22beeedee4b9ca053ca6640c3101c', '2021-04-24 10:00:27', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('138', '743efb4853024cf4bde5dcf4ce5ff2a3', '2021-04-24 10:00:49', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('139', '73fe96ee0f6540a2ac603b595209c66a', '2021-04-24 10:00:49', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('140', '5145cefba5704ea0b1ffed345fc0af43', '2021-04-24 10:00:54', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('141', 'd4e3d1c7993e49c1b1d0efc9475dd3a3', '2021-04-24 10:01:08', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('142', '45ba373e510c4d2aa0901b49eef8c211', '2021-04-24 10:01:12', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('143', '26dbee5f25e244f59332265808a36ed2', '2021-04-24 10:01:23', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('144', '62ef9efeff38406390cc1a930088f874', '2021-04-24 10:01:29', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('145', '055046afb1d14a03a4cadcfad871e162', '2021-04-24 10:03:25', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('146', 'eccf636f31fb4b358dcbb6894ded71da', '2021-04-24 10:03:28', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('147', 'c63f210524874dc18c1599b24e4ab953', '2021-04-24 10:04:59', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('148', '2543d052a1864cd2b1f721b1648fa50f', '2021-04-24 10:05:02', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('149', '3a137f7f32e5457388a45cda47f8bd4d', '2021-04-24 10:06:13', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '3');
INSERT INTO `tbsyslog` VALUES ('150', 'ef3e42eb718d42cf93f622ae3105e53b', '2021-04-24 10:06:17', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('151', '9bd3f022ce584e48af4f8469d1c2e7fb', '2021-04-24 10:06:22', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '3');
INSERT INTO `tbsyslog` VALUES ('152', 'cfa3879064e74597ba83036005d384e9', '2021-04-24 10:06:25', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('153', '6f808982da304a349a9777d98f3b9c3a', '2021-04-24 10:07:41', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '3');
INSERT INTO `tbsyslog` VALUES ('154', 'b770145facb347a7bf4cfa78c909e611', '2021-04-24 10:07:41', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('155', '93da01232bfa43489247fe7bf5a72420', '2021-04-24 10:07:41', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '6');
INSERT INTO `tbsyslog` VALUES ('156', '97cf744f488141cabad1575115ad5bae', '2021-04-24 10:07:48', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('157', '69dc56f3fd944ad0bc613fb3ea6cd269', '2021-04-24 10:08:06', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('158', '7c6c0a7bc4d54ee09ba5ec9d4531174c', '2021-04-24 10:08:09', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('159', '505db7453d50427ba3b2302d65a66dd7', '2021-04-24 10:08:16', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('160', '1446d2359458492eb9e79138938bd9b0', '2021-04-24 10:11:03', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '3');
INSERT INTO `tbsyslog` VALUES ('161', '9108609b420d42c0aeaf12e2bdda2d63', '2021-04-24 10:11:14', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '3');
INSERT INTO `tbsyslog` VALUES ('162', 'b1842ea45a7e455ebf300bb73d6e007e', '2021-04-24 10:11:17', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '6');
INSERT INTO `tbsyslog` VALUES ('163', '339d68d0ae2f4f26bb09e9e0b58c9ef7', '2021-04-24 10:11:24', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '3');
INSERT INTO `tbsyslog` VALUES ('164', 'a285ad31d40d47f998f9d486e12773dc', '2021-04-24 10:12:14', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('165', 'de91f20b12ed45e69e7d8160d4874913', '2021-04-24 10:12:16', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '6');
INSERT INTO `tbsyslog` VALUES ('166', '0736459b9c4045358d5fc2f99639ee9a', '2021-04-24 10:33:24', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '6');
INSERT INTO `tbsyslog` VALUES ('167', 'c47e42574189476596df61416236c1ab', '2021-04-24 10:33:40', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('168', 'ad535727245743fc8422dfe0aa51fea1', '2021-04-24 10:34:15', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('169', '18b649d643f245778fb93424fb96da0d', '2021-04-24 10:34:18', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '5');
INSERT INTO `tbsyslog` VALUES ('170', '80baa06307ae4ba182af55e4feb74b9d', '2021-04-24 10:38:19', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('171', '9e52b196f39642ebb26b8bff59b73fb3', '2021-04-24 10:38:19', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('172', 'aea0c1735e234999b56984ae9886217d', '2021-04-24 10:38:19', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('173', '15df6c3ffc2444b2babde989e2f8fb18', '2021-04-24 10:38:35', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(89.0.4389.82)', '0:0:0:0:0:0:0:1', '5');
INSERT INTO `tbsyslog` VALUES ('174', 'f73a935397434123941e0ad3804726f4', '2021-05-10 10:39:20', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(80.0.3987.163)', '0:0:0:0:0:0:0:1', '610');
INSERT INTO `tbsyslog` VALUES ('175', '675dd70ec59943db863abbbe0826543c', '2021-05-10 10:39:23', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(80.0.3987.163)', '0:0:0:0:0:0:0:1', '88');
INSERT INTO `tbsyslog` VALUES ('176', '447a68b3bfde475f98f2fad09cf88d83', '2021-05-10 10:39:24', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(80.0.3987.163)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('177', 'cba34554783545e5817ac09b649945b9', '2021-05-10 10:39:26', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(80.0.3987.163)', '0:0:0:0:0:0:0:1', '3');
INSERT INTO `tbsyslog` VALUES ('178', '8355dfb90fff43a68959721ba20db542', '2021-05-10 10:39:32', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(80.0.3987.163)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('179', '9317dcdb56fe4bd4876f59eb53905540', '2021-05-10 10:39:34', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(80.0.3987.163)', '0:0:0:0:0:0:0:1', '5');
INSERT INTO `tbsyslog` VALUES ('180', 'e0addafb16874716aeca1a7781296d2f', '2021-05-10 10:39:46', 'POST', '/ssm_war/queryUser', '[{userName=, password=123456}]', 'WINDOWS_10-CHROME8(80.0.3987.163)', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `tbsyslog` VALUES ('181', '9b227bc3dee2476998be8f54500c8f09', '2021-05-10 10:39:54', 'POST', '/ssm_war/queryUser', '[{userName=admin, password=123456}]', 'WINDOWS_10-CHROME8(80.0.3987.163)', '0:0:0:0:0:0:0:1', '1');
INSERT INTO `tbsyslog` VALUES ('182', '43a0abc5ce8c48c8a4bf17119ae41464', '2021-05-10 10:39:57', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(80.0.3987.163)', '0:0:0:0:0:0:0:1', '3');
INSERT INTO `tbsyslog` VALUES ('183', 'fe298ba6477c41ee9bd718d187c3ab5c', '2021-05-10 10:39:58', 'POST', '/ssm_war/queryUserList', '[{pageNum=1, pageSize=10}]', 'WINDOWS_10-CHROME8(80.0.3987.163)', '0:0:0:0:0:0:0:1', '4');
INSERT INTO `tbsyslog` VALUES ('184', 'de0d38142b264dce8eeaf9b866cd2ac9', '2021-06-09 00:58:52', 'GET', '/ssm_war/queryUser', '[{username=admin, passwor=admin}]', 'UNKNOWN-UNKNOWN(null)', '0:0:0:0:0:0:0:1', '754');
INSERT INTO `tbsyslog` VALUES ('185', '5bd5f99e89584667a4d8f2ffd57f4149', '2021-06-09 04:36:59', 'GET', '/ssm_war/queryUser', '[{username=admin, passwor=admin}]', 'UNKNOWN-UNKNOWN(null)', '0:0:0:0:0:0:0:1', '586');
INSERT INTO `tbsyslog` VALUES ('186', '303388187a67431d94322c18eb21bc71', '2021-06-09 04:46:12', 'GET', '/ssm_war/queryUser', '[{username=admin, passwor=admin}]', 'UNKNOWN-UNKNOWN(null)', '0:0:0:0:0:0:0:1', '535');

-- ----------------------------
-- Table structure for tbuser
-- ----------------------------
DROP TABLE IF EXISTS `tbuser`;
CREATE TABLE `tbuser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uId` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `uName` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `sex` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbuser
-- ----------------------------
INSERT INTO `tbuser` VALUES ('1', 'one', 'admin', '123456', 'min', '18', '0');
INSERT INTO `tbuser` VALUES ('4', '002', '中文', '666666', 'nim', '19', '1');

-- ----------------------------
-- Table structure for t_user_sub
-- ----------------------------
DROP TABLE IF EXISTS `t_user_sub`;
CREATE TABLE `t_user_sub` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uId` int DEFAULT NULL,
  `bId` int DEFAULT NULL,
  `subDateTime` datetime DEFAULT NULL,
  `returnDateTime` datetime DEFAULT NULL,
  `bookType` int DEFAULT NULL,
  `returntype` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_sub
-- ----------------------------
INSERT INTO `t_user_sub` VALUES ('1', '1', '1', '2021-12-12 19:36:08', '2021-12-18 19:36:08', '1', '1');
