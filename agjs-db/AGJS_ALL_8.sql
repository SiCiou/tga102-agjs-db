/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 8.0.28 : Database - AGJS
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`AGJS` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `AGJS`;

/*Table structure for table `ADMINISTRATOR` */

DROP TABLE IF EXISTS `ADMINISTRATOR`;

CREATE TABLE `ADMINISTRATOR` (
  `ADMINISTRATOR_ID` int NOT NULL AUTO_INCREMENT COMMENT '管理者流水編號',
  `ADMINISTRATOR_ACCOUNT` varchar(25) NOT NULL COMMENT '管理者帳號',
  `ADMINISTRATOR_PASSWORD` varchar(25) NOT NULL COMMENT '管理者密碼',
  PRIMARY KEY (`ADMINISTRATOR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `ADMINISTRATOR` */

insert  into `ADMINISTRATOR`(`ADMINISTRATOR_ID`,`ADMINISTRATOR_ACCOUNT`,`ADMINISTRATOR_PASSWORD`) values 
(1,'TGA10204ALL','aGVsbG9KYXZhMDc3Nw==');

/*Table structure for table `ANNOUNCEMENT` */

DROP TABLE IF EXISTS `ANNOUNCEMENT`;

CREATE TABLE `ANNOUNCEMENT` (
  `ANM_ID` int NOT NULL AUTO_INCREMENT COMMENT '公告編號',
  `ADMINISTRATOR_ID` int NOT NULL COMMENT '管理者流水編號',
  `ANM_ORDER_ID` int NOT NULL COMMENT '公告排序',
  `ANM_STATUS` varchar(3) NOT NULL COMMENT '公告狀態',
  `ANM_TITLE` varchar(50) NOT NULL COMMENT '公告標題',
  `ANM_CONTENT` varchar(1000) NOT NULL COMMENT '公告內文',
  `ANM_TYPE_ID` int NOT NULL COMMENT '公告類型(外來鍵)',
  `ANM_START_DATE` date NOT NULL COMMENT '上架日期',
  `ANM_END_DATE` date DEFAULT NULL COMMENT '下架日期',
  PRIMARY KEY (`ANM_ID`),
  KEY `FK_ANNOUNCEMENT_ANM_TYPE_ID` (`ANM_TYPE_ID`),
  CONSTRAINT `FK_ANNOUNCEMENT_ANM_TYPE_ID` FOREIGN KEY (`ANM_TYPE_ID`) REFERENCES `ANNOUNCEMENT_TYPE` (`ANM_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `ANNOUNCEMENT` */

insert  into `ANNOUNCEMENT`(`ANM_ID`,`ADMINISTRATOR_ID`,`ANM_ORDER_ID`,`ANM_STATUS`,`ANM_TITLE`,`ANM_CONTENT`,`ANM_TYPE_ID`,`ANM_START_DATE`,`ANM_END_DATE`) values 
(1,1,2,'已下架','「無三不成禮」小黃卡住宿禮遇','<p>打疫苗享折扣！</p>\n \n <p>自即日起至 2022/8/30前推出「無三不成禮」小黃卡專屬住宿禮遇。</p>\n \n <p>於入住時出示紙本疫苗卡或健保 App ，打一劑享延遲退房至中午12點、打兩劑享延遲退房至下午1點、打滿三劑則可延遲退房至下午2點，再贈送1,000元餐廳抵用券，不限平假日皆可使用，每房最多一次。</p>\n ',1,'2021-05-01','2022-08-31'),
(2,1,1,'已上架','防疫政策說明','<p>為因應防疫規範，建議賓客可下載「臺灣社交距離App」，並配合佩戴口罩、酒精消毒及測量體溫。此外，提醒入住賓客請務必遵守以下防疫規定：</p>\n \n <p>1. 離開客房時請全程配戴口罩。</p>\n \n <p>2. 避免不必要移動、活動或集會。</p>\n \n <p>3. 房內人數以原同住家人，並依房型所登記之人數為原則。另依觀光局指示，房內禁止群聚開趴或唱歌等行為，致生傳染風險及觸法。</p>\n \n <p>4. 自我健康監測(有症狀應就醫)。</p>\n \n <p>&nbsp;</p>\n \n <p>不便之處，敬祈見諒。共同守護健康，攜手努力為防疫盡一份心力！</p>\n ',3,'2022-03-01',NULL),
(3,1,1,'已上架','防範詐騙提醒','<p>防止新型態網路詐騙，呼籲賓客提高警覺防詐騙！！</p>\n \n <p>好旅提醒您，當您使用線上系統完成交易後，本飯店不會以電話通知您:因網路分期付款發生設定錯誤等理由而要求您操作ATM解除、變更付款方式或補繳金額；亦不會以電話通知要求您提供信用卡帳號或個人及銀行相關資料。</p>\n \n <p>請您務必提高警覺以免上當受騙，如接獲不明及可疑的電話或簡訊提出上述要求時，請勿提供任何資料，歡迎您聯繫好旅查證或並請儘速反應至警政署反詐騙諮詢專線165或內政部警政署全民防騙網遠離詐騙三『不』！</p>\n \n <p>不碰ATM！不說個人資料！不要回撥陌生電話！</p>\n \n <p>■ 不碰ATM詐騙集團會要求客戶去ATM轉換英文操作介面，是為了誘使您轉帳。ATM沒有退款、解除分期付款&hellip;等功能，請您務必小心。好旅不會任意變更已付款的訂單，不會要求您依照指示操作使用ATM。</p>\n \n <p>■ 不說信用卡資料 好旅不會以電話請您提供銀行帳戶、信用卡資料；亦不會以「問卷」或「中獎」形式通知您提供個人資料或要求匯款。</p>\n \n <p>■ 不回撥陌生電話詐騙集團會篡改電信資料，轉來電顯示或是發送簡訊，若您接獲此類可疑電話或簡訊，請與好旅查證或撥打165反詐騙諮詢專線查證，以確保安全。</p>\n ',3,'2021-01-01',NULL),
(4,1,3,'已上架','壽星專屬 厚禮獨享','<p><strong>Celebrate Your Birthday with Us!</strong></p>\n \n <p>與您共慶生日美好時光! 本月壽星於現場出示證明文件認證，即贈蛋糕單片一份!</p>\n ',2,'2022-09-01','2022-10-30'),
(5,1,3,'已下架','高壓電年度檢查休館通知','<p>感謝您一直以來對於好旅的支持與愛護。</p>\n \n <p>依照政府法規，飯店將進行年度高壓電力檢查，並將於2021/11/14(一)中午 12 點至 2021/11/15(二)下午 3 點暫時關閉飯店，2021/11/15(二)下午 3 點恢復入住手續服務。</p>\n \n <p>&nbsp;</p>\n \n <p>造成不便，敬請見諒。</p>\n ',3,'2021-06-01','2021-11-16');

/*Table structure for table `ANNOUNCEMENT_TYPE` */

DROP TABLE IF EXISTS `ANNOUNCEMENT_TYPE`;

CREATE TABLE `ANNOUNCEMENT_TYPE` (
  `ANM_TYPE_ID` int NOT NULL COMMENT '公告類型種類',
  `ANM_TYPE` varchar(10) DEFAULT NULL COMMENT '公告類型',
  PRIMARY KEY (`ANM_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `ANNOUNCEMENT_TYPE` */

insert  into `ANNOUNCEMENT_TYPE`(`ANM_TYPE_ID`,`ANM_TYPE`) values 
(1,'住房優惠'),
(2,'餐飲優惠'),
(3,'其他');

/*Table structure for table `CS_MAIL` */

DROP TABLE IF EXISTS `CS_MAIL`;

CREATE TABLE `CS_MAIL` (
  `FAQ_FORM_ID` int NOT NULL AUTO_INCREMENT COMMENT '問題表單編號',
  `FAQ_TYPE_NAME` varchar(10) DEFAULT NULL COMMENT '問題種類名稱',
  `USER_NAME` varchar(30) NOT NULL COMMENT '使用者姓名',
  `USER_PHONE` varchar(15) DEFAULT NULL COMMENT '使用者手機',
  `USER_EMAIL` varchar(50) NOT NULL COMMENT '使用者信箱',
  `CONTENT_TEXT` varchar(100) NOT NULL COMMENT '內容說明',
  `CREATE_DATE` date DEFAULT NULL COMMENT '建立日期',
  PRIMARY KEY (`FAQ_FORM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `CS_MAIL` */

insert  into `CS_MAIL`(`FAQ_FORM_ID`,`FAQ_TYPE_NAME`,`USER_NAME`,`USER_PHONE`,`USER_EMAIL`,`CONTENT_TEXT`,`CREATE_DATE`) values 
(1,'訂房諮詢','林建生','0800092000','Adam0800@gmail.com','您好我希望訂6月23的房間','2022-06-22'),
(2,'餐飲諮詢','巴度妖','0228825252','Antony0228@gmail.com','請幫我預訂6月24中午的2位','2022-06-23'),
(3,'住宿諮詢','酉曾子','0900995995','Eamonn995@gmail.com','你們的房間電視打不開','2022-06-24'),
(4,'行程諮詢','澆遊趣','0980989898','GoGo9898@gmail.com','你們行程實在是太棒了!!','2022-06-25'),
(5,'其他諮詢','陳累了','0800123456','Duke9487945@gmail.com','關於一些問題我希望能夠改進','2022-06-26');

/*Table structure for table `JOURNEY` */

DROP TABLE IF EXISTS `JOURNEY`;

CREATE TABLE `JOURNEY` (
  `JOURNEY_ID` int NOT NULL AUTO_INCREMENT COMMENT '行程編號',
  `JOURNEY_NAME` varchar(20) NOT NULL COMMENT '行程名稱',
  `JOURNEY_TYPE_ID` int NOT NULL COMMENT 'FK_行程類型編號',
  `JOURNEY_PRICE` int NOT NULL COMMENT '行程價格',
  `JOURNEY_PRICE_CHILD` int NOT NULL COMMENT '行程價格(兒童)',
  `APPLY_LIMIT` int NOT NULL COMMENT '報名人數上限',
  `JOURNEY_PICTURE` longblob COMMENT '行程照片',
  `JOURNET_INFO` text COMMENT '行程介紹',
  `LAUNCHED` tinyint NOT NULL COMMENT '是否上架(是否開放加購)',
  PRIMARY KEY (`JOURNEY_ID`),
  KEY `JOURNEY_TYPE_ID` (`JOURNEY_TYPE_ID`),
  CONSTRAINT `JOURNEY_TYPE_ID` FOREIGN KEY (`JOURNEY_TYPE_ID`) REFERENCES `JOURNEY_TYPE` (`JOURNEY_TYPE_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='加購行程';

/*Data for the table `JOURNEY` */

insert  into `JOURNEY`(`JOURNEY_ID`,`JOURNEY_NAME`,`JOURNEY_TYPE_ID`,`JOURNEY_PRICE`,`JOURNEY_PRICE_CHILD`,`APPLY_LIMIT`,`JOURNEY_PICTURE`,`JOURNET_INFO`,`LAUNCHED`) values 
(11000,'繁星沙岸',10000,750,500,20,NULL,NULL,1),
(11001,'林間巡禮',10001,900,650,35,NULL,NULL,1);

/*Table structure for table `JOURNEY_ITEM` */

DROP TABLE IF EXISTS `JOURNEY_ITEM`;

CREATE TABLE `JOURNEY_ITEM` (
  `JOURNEY_ITEM_ID` int NOT NULL AUTO_INCREMENT COMMENT '行程單編號',
  `SALES_ORDER_HEADER_ID` int NOT NULL COMMENT 'FK_訂單編號',
  `JOURNEY_ID` int NOT NULL COMMENT 'FK_行程編號',
  `ADULTS` int DEFAULT NULL COMMENT '大人',
  `CHILDREN` int DEFAULT NULL COMMENT '小孩',
  `JOURNEY_DATE` date NOT NULL COMMENT '行程日期',
  PRIMARY KEY (`JOURNEY_ITEM_ID`),
  KEY `JOURNEY_ID` (`JOURNEY_ID`),
  KEY `SALES_ORDER_HEADER_ID` (`SALES_ORDER_HEADER_ID`),
  CONSTRAINT `JOURNEY_ID` FOREIGN KEY (`JOURNEY_ID`) REFERENCES `JOURNEY` (`JOURNEY_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `SALES_ORDER_HEADER_ID` FOREIGN KEY (`SALES_ORDER_HEADER_ID`) REFERENCES `SALES_ORDER_HEADER` (`SALES_ORDER_HEADER_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='行程訂單明細';

/*Data for the table `JOURNEY_ITEM` */

insert  into `JOURNEY_ITEM`(`JOURNEY_ITEM_ID`,`SALES_ORDER_HEADER_ID`,`JOURNEY_ID`,`ADULTS`,`CHILDREN`,`JOURNEY_DATE`) values 
(12000,1000,11000,2,0,'2022-10-01'),
(12001,1001,11001,4,2,'2022-10-17'),
(12002,1002,11001,2,0,'2022-10-17'),
(12003,1003,11001,5,0,'2022-07-01'),
(12004,1004,11000,2,3,'2022-11-03');

/*Table structure for table `JOURNEY_TYPE` */

DROP TABLE IF EXISTS `JOURNEY_TYPE`;

CREATE TABLE `JOURNEY_TYPE` (
  `JOURNEY_TYPE_ID` int NOT NULL AUTO_INCREMENT,
  `JOURNEY_TYPE` varchar(10) NOT NULL,
  PRIMARY KEY (`JOURNEY_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='行程類型';

/*Data for the table `JOURNEY_TYPE` */

insert  into `JOURNEY_TYPE`(`JOURNEY_TYPE_ID`,`JOURNEY_TYPE`) values 
(10000,'海洋游趣'),
(10001,'深度之旅'),
(10002,'藝文風尚'),
(10003,'歷史巡禮'),
(10004,'美食之旅');

/*Table structure for table `REST_AD` */

DROP TABLE IF EXISTS `REST_AD`;

CREATE TABLE `REST_AD` (
  `AD_ID` int NOT NULL AUTO_INCREMENT,
  `REST_ID` int NOT NULL,
  `AD_NAME` varchar(50) NOT NULL,
  `AD_PIC` longblob,
  `AD_INTRO` varchar(200) DEFAULT NULL,
  `AD_TIME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AD_ID`),
  KEY `REST_ID` (`REST_ID`),
  CONSTRAINT `rest_ad_ibfk_1` FOREIGN KEY (`REST_ID`) REFERENCES `REST_LIST` (`REST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `REST_AD` */

insert  into `REST_AD`(`AD_ID`,`REST_ID`,`AD_NAME`,`AD_PIC`,`AD_INTRO`,`AD_TIME`) values 
(14000,1,'慶端午，肉粽吃起來',NULL,'你吃的是北部粽?還是南部粽?快來JAVA STEAK HOUSE品嘗創新料理美式肉粽','2022-06-22~2022-07-22'),
(14001,1,'暑假動起來,小小廚神體驗營',NULL,'兩人同行，家長免費，製作紅蘿蔔蛋糕','2022-07-01~2022-08-31'),
(14002,2,'以拉一下馬賽',NULL,'馬薩卡哦一西一修尼塔杯魯','2022-07-01~2022-08-31'),
(14003,2,'KONICHIWA',NULL,'WATASHIWA NIHON JIN DESU','2022-07-01~2022-08-31'),
(14004,3,'NEFILX AND CHILL',NULL,'DO YOU WANT SOME COFFEE? MY CAT CAN DO BACKFILP','2022-07-01~2022-08-31');

/*Table structure for table `REST_BOOK` */

DROP TABLE IF EXISTS `REST_BOOK`;

CREATE TABLE `REST_BOOK` (
  `REST_BOOK_ID` int NOT NULL AUTO_INCREMENT,
  `SALES_ORDER_HEADER_ID` int NOT NULL,
  `REST_ID` int NOT NULL,
  `REST_DATE` date NOT NULL,
  `USER_NAME` varchar(30) DEFAULT NULL,
  `REST_NUM` int NOT NULL,
  `REST_TEL` varchar(50) DEFAULT NULL,
  `REST_NOTE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`REST_BOOK_ID`),
  KEY `REST_ID` (`REST_ID`),
  KEY `SALES_ORDER_HEADER_ID` (`SALES_ORDER_HEADER_ID`),
  CONSTRAINT `rest_book_ibfk_1` FOREIGN KEY (`REST_ID`) REFERENCES `REST_LIST` (`REST_ID`),
  CONSTRAINT `rest_book_ibfk_2` FOREIGN KEY (`SALES_ORDER_HEADER_ID`) REFERENCES `SALES_ORDER_HEADER` (`SALES_ORDER_HEADER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `REST_BOOK` */

insert  into `REST_BOOK`(`REST_BOOK_ID`,`SALES_ORDER_HEADER_ID`,`REST_ID`,`REST_DATE`,`USER_NAME`,`REST_NUM`,`REST_TEL`,`REST_NOTE`) values 
(15000,1000,1,'2022-06-22','紐特',2,'0912345678','慶生'),
(15001,1001,1,'2022-07-22','安妮亞',10,'0912222222','公司聚餐'),
(15002,1002,1,'2022-08-20','洛伊德',7,'0912333333','相親'),
(15003,1003,2,'2022-07-02','哈利',8,'0912344444','嬰兒4位'),
(15004,1004,2,'2022-06-29','哈利',4,'0912345555','不吃香菜'),
(15005,1005,3,'2022-06-30','約兒',1,'0912345666','失戀');

/*Table structure for table `REST_LIST` */

DROP TABLE IF EXISTS `REST_LIST`;

CREATE TABLE `REST_LIST` (
  `REST_ID` int NOT NULL,
  `REST_NAME` varchar(50) NOT NULL,
  `REST_PIC` longblob,
  `REST_FLOOR` varchar(50) DEFAULT NULL,
  `REST_TIME` varchar(50) DEFAULT NULL,
  `REST_INTRO` varchar(200) DEFAULT NULL,
  `INTRO_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`REST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `REST_LIST` */

insert  into `REST_LIST`(`REST_ID`,`REST_NAME`,`REST_PIC`,`REST_FLOOR`,`REST_TIME`,`REST_INTRO`,`INTRO_TIME`) values 
(1,'JAVA STEAK HOUSE',NULL,'1F','12:00~21:00','一樓的Java Steak House美式餐廳為您帶來美國家鄉料理以及歡樂輕鬆的用餐氛圍。Java Steak House餐廳結合台北市中山區娛樂購物的地點機能，提供您一個歡趣的都會食饗體驗。透過全景落地窗, 一邊悠閒地享受美食, 一邊欣賞林蔭大道美景。','2022-06-22 23:00:00'),
(2,'MONOHIYA',NULL,'2F','12:00~21:00','精湛的日式料理功夫及盤飾藝術，呈現精緻懷石料理與和牛涮涮鍋的經典美味。 壽司檯板前座位提供無菜單料理','2022-06-22 23:00:00'),
(3,'102 BAR',NULL,'50F','18:00~03:00','沐浴月光下，邊啜飲調酒師的特調雞尾酒或上等葡萄酒，邊俯瞰城市絕美夜景，伴隨著觸動人心的音律，在遠處燈火一明一滅中，發現港都絢爛風情。','2022-06-22 23:00:00');

/*Table structure for table `REST_TIME_MONEY` */

DROP TABLE IF EXISTS `REST_TIME_MONEY`;

CREATE TABLE `REST_TIME_MONEY` (
  `MONEY_ID` int NOT NULL AUTO_INCREMENT,
  `REST_ID` int NOT NULL,
  `MONEY` int NOT NULL,
  `MONEY_CONTENT` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MONEY_ID`),
  KEY `REST_ID` (`REST_ID`),
  CONSTRAINT `rest_time_money_ibfk_1` FOREIGN KEY (`REST_ID`) REFERENCES `REST_LIST` (`REST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `REST_TIME_MONEY` */

insert  into `REST_TIME_MONEY`(`MONEY_ID`,`REST_ID`,`MONEY`,`MONEY_CONTENT`) values 
(13000,1,1699,'雙人午餐組合'),
(13001,1,2399,'四人午餐組合'),
(13002,2,1788,'雙人晚餐特盛'),
(13003,2,2288,'四人午餐超超盛'),
(13004,3,699,'單人無限暢飲');

/*Table structure for table `ROOM` */

DROP TABLE IF EXISTS `ROOM`;

CREATE TABLE `ROOM` (
  `ROOM_ID` int NOT NULL COMMENT '房號',
  `ROOM_STYLE_ID` int NOT NULL,
  PRIMARY KEY (`ROOM_ID`),
  KEY `FK_ROOM_ROOM_STYLE_ID` (`ROOM_STYLE_ID`),
  CONSTRAINT `FK_ROOM_ROOM_STYLE_ID` FOREIGN KEY (`ROOM_STYLE_ID`) REFERENCES `ROOM_STYLE` (`ROOM_STYLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `ROOM` */

insert  into `ROOM`(`ROOM_ID`,`ROOM_STYLE_ID`) values 
(201,3000),
(202,3000),
(203,3000),
(204,3000),
(205,3000),
(301,3001),
(302,3001),
(303,3001),
(304,3001),
(305,3001),
(501,3002),
(502,3002),
(503,3002),
(504,3002),
(505,3002),
(601,3003),
(602,3003),
(603,3003),
(604,3003),
(605,3003);

/*Table structure for table `ROOM_FACILITIES` */

DROP TABLE IF EXISTS `ROOM_FACILITIES`;

CREATE TABLE `ROOM_FACILITIES` (
  `ROOM_FACILITIES_ID` int NOT NULL AUTO_INCREMENT COMMENT '客房設備ID',
  `ROOM_FACILITIES` varchar(25) NOT NULL,
  PRIMARY KEY (`ROOM_FACILITIES_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5021 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `ROOM_FACILITIES` */

insert  into `ROOM_FACILITIES`(`ROOM_FACILITIES_ID`,`ROOM_FACILITIES`) values 
(5000,'溫泉浴池'),
(5001,'免治馬桶'),
(5002,'吹風機'),
(5003,'冰箱'),
(5004,'液晶電視'),
(5005,'保險箱'),
(5006,'洗手乳'),
(5007,'空調系統'),
(5008,'電子體重計'),
(5009,'Wi-Fi'),
(5010,'拖鞋'),
(5011,'熱飲電壺'),
(5012,'咖啡、茶葉'),
(5013,'浴巾組'),
(5014,'電子體重計'),
(5015,'觸控電話'),
(5016,'可調燈控'),
(5017,'潤髮乳'),
(5018,'膠囊咖啡機'),
(5019,'洗髮沐浴乳'),
(5020,'身體乳');

/*Table structure for table `ROOM_INFORMATION_FACILITIES` */

DROP TABLE IF EXISTS `ROOM_INFORMATION_FACILITIES`;

CREATE TABLE `ROOM_INFORMATION_FACILITIES` (
  `ROOM_STYLE_ID` int NOT NULL COMMENT '房型ID',
  `ROOM_FACILITIES_ID` int NOT NULL COMMENT '客房設備ID',
  PRIMARY KEY (`ROOM_STYLE_ID`,`ROOM_FACILITIES_ID`),
  KEY `FK_ROOM_INFORMATION_FACILITIES_ROOM_FACILITIES_ID` (`ROOM_FACILITIES_ID`),
  CONSTRAINT `FK_ROOM_INFORMATION_FACILITIES_ROOM_FACILITIES_ID` FOREIGN KEY (`ROOM_FACILITIES_ID`) REFERENCES `ROOM_FACILITIES` (`ROOM_FACILITIES_ID`),
  CONSTRAINT `FK_ROOM_INFORMATION_FACILITIES_ROOM_STYLE_ID` FOREIGN KEY (`ROOM_STYLE_ID`) REFERENCES `ROOM_STYLE` (`ROOM_STYLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `ROOM_INFORMATION_FACILITIES` */

insert  into `ROOM_INFORMATION_FACILITIES`(`ROOM_STYLE_ID`,`ROOM_FACILITIES_ID`) values 
(3000,5000),
(3000,5001),
(3001,5002),
(3001,5003),
(3002,5004);

/*Table structure for table `ROOM_PHOTO` */

DROP TABLE IF EXISTS `ROOM_PHOTO`;

CREATE TABLE `ROOM_PHOTO` (
  `ROOM_PHOTO_ID` int NOT NULL AUTO_INCREMENT COMMENT '客房照片流水號',
  `ROOM_STYLE_ID` int NOT NULL COMMENT '房型ID',
  `ROOM_PHOTO` longblob COMMENT '客房照片',
  PRIMARY KEY (`ROOM_PHOTO_ID`),
  KEY `FK_ROOM_PHOTO_ROOM_STYLE_ID` (`ROOM_STYLE_ID`),
  CONSTRAINT `FK_ROOM_PHOTO_ROOM_STYLE_ID` FOREIGN KEY (`ROOM_STYLE_ID`) REFERENCES `ROOM_STYLE` (`ROOM_STYLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `ROOM_PHOTO` */

insert  into `ROOM_PHOTO`(`ROOM_PHOTO_ID`,`ROOM_STYLE_ID`,`ROOM_PHOTO`) values 
(6000,3000,NULL),
(6001,3000,NULL),
(6002,3001,NULL),
(6003,3001,NULL),
(6004,3002,NULL);

/*Table structure for table `ROOM_STYLE` */

DROP TABLE IF EXISTS `ROOM_STYLE`;

CREATE TABLE `ROOM_STYLE` (
  `ROOM_STYLE_ID` int NOT NULL AUTO_INCREMENT COMMENT '房型ID',
  `ROOM_NAME` varchar(20) NOT NULL COMMENT '房型名稱',
  `ROOM_QUANTITY` int NOT NULL COMMENT '房數',
  `BED_TYPE` varchar(10) NOT NULL COMMENT '床型',
  `ROOM_TYPE` varchar(10) NOT NULL COMMENT '房型種類',
  `ORDER_ROOM_PRICE` int NOT NULL COMMENT '房間單價',
  `ROOM_DESCRIPTION` text NOT NULL COMMENT '房型描述',
  PRIMARY KEY (`ROOM_STYLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3004 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `ROOM_STYLE` */

insert  into `ROOM_STYLE`(`ROOM_STYLE_ID`,`ROOM_NAME`,`ROOM_QUANTITY`,`BED_TYPE`,`ROOM_TYPE`,`ORDER_ROOM_PRICE`,`ROOM_DESCRIPTION`) values 
(3000,'山景標準房',5,'兩小床/一大床','雙人房',5000,'簡約舒適、度假首選'),
(3001,'山景雅致房',5,'兩大床','四人房',8000,'遠離塵囂、感受靜謐'),
(3002,'海景標準房',5,'兩小床/一大床','雙人房',7000,'碧海藍天、體驗經典'),
(3003,'海景雅致房',5,'兩大床','四人房',10000,'島嶼記憶、度假美夢');

/*Table structure for table `ROOM_USED_RECORD` */

DROP TABLE IF EXISTS `ROOM_USED_RECORD`;

CREATE TABLE `ROOM_USED_RECORD` (
  `ROOM_USED_RECORD_ID` int NOT NULL AUTO_INCREMENT COMMENT '客房使用紀錄ID',
  `ROOM_ID` int NOT NULL COMMENT '房號',
  `SALES_ORDER_HEADER_ID` int DEFAULT NULL COMMENT '訂單編號',
  `ORDER_START_DATE` date NOT NULL COMMENT '入住日期',
  `ORDER_END_DATE` date NOT NULL COMMENT '退房日期',
  `USER_NAME` varchar(30) DEFAULT NULL COMMENT '會員姓名',
  `Source` int DEFAULT NULL,
  PRIMARY KEY (`ROOM_USED_RECORD_ID`),
  KEY `FK_ROOM_USED_RECORD_ROOM_ID` (`ROOM_ID`),
  KEY `FK_ROOM_USED_RECORD_SALES_ORDER_HEADER_ID` (`SALES_ORDER_HEADER_ID`),
  CONSTRAINT `FK_ROOM_USED_RECORD_ROOM_ID` FOREIGN KEY (`ROOM_ID`) REFERENCES `ROOM` (`ROOM_ID`),
  CONSTRAINT `FK_ROOM_USED_RECORD_SALES_ORDER_HEADER_ID` FOREIGN KEY (`SALES_ORDER_HEADER_ID`) REFERENCES `SALES_ORDER_HEADER` (`SALES_ORDER_HEADER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4039 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `ROOM_USED_RECORD` */

insert  into `ROOM_USED_RECORD`(`ROOM_USED_RECORD_ID`,`ROOM_ID`,`SALES_ORDER_HEADER_ID`,`ORDER_START_DATE`,`ORDER_END_DATE`,`USER_NAME`,`Source`) values 
(4009,601,NULL,'2022-08-10','2022-08-15',NULL,0),
(4018,201,1005,'2022-05-02','2022-05-09','約兒',0),
(4028,601,1000,'2022-10-01','2022-10-02','紐特',NULL),
(4029,602,1000,'2022-10-01','2022-10-02','紐特',NULL),
(4030,301,1000,'2022-10-01','2022-10-02','紐特',NULL),
(4036,301,1004,'2022-11-03','2022-11-04','哈利',NULL),
(4037,301,1001,'2022-10-17','2022-10-24','安妮亞',NULL),
(4038,501,1002,'2022-10-17','2022-10-24','洛伊德',NULL);

/*Table structure for table `SALES_ORDER_HEADER` */

DROP TABLE IF EXISTS `SALES_ORDER_HEADER`;

CREATE TABLE `SALES_ORDER_HEADER` (
  `SALES_ORDER_HEADER_ID` int NOT NULL AUTO_INCREMENT COMMENT '訂單編號',
  `USER_ID` int NOT NULL COMMENT '使用者流水編號',
  `CREATE_DATE` date NOT NULL COMMENT '訂單建立日',
  `ORDER_START_DATE` date NOT NULL COMMENT '入住日期',
  `ORDER_END_DATE` date NOT NULL COMMENT '退房日期',
  `ORDER_CHANGE_DATE` date DEFAULT NULL COMMENT '訂單修改日期',
  `SALES_ORDER_STATUS_ID` int NOT NULL COMMENT '訂單狀態ID',
  `ORDER_REMARK` varchar(50) DEFAULT NULL COMMENT '訂單備註',
  `ORDER_ROOM_PRICE` int NOT NULL COMMENT '房間總額',
  `ORDER_JOURNEY_PRICE` int DEFAULT NULL COMMENT '行程總額',
  PRIMARY KEY (`SALES_ORDER_HEADER_ID`),
  KEY `USER_ID` (`USER_ID`),
  KEY `SALES_ORDER_STATUS_ID` (`SALES_ORDER_STATUS_ID`),
  CONSTRAINT `sales_order_header_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `USER` (`USER_ID`),
  CONSTRAINT `sales_order_header_ibfk_2` FOREIGN KEY (`SALES_ORDER_STATUS_ID`) REFERENCES `SALES_ORDER_STATUS` (`SALES_ORDER_STATUS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `SALES_ORDER_HEADER` */

insert  into `SALES_ORDER_HEADER`(`SALES_ORDER_HEADER_ID`,`USER_ID`,`CREATE_DATE`,`ORDER_START_DATE`,`ORDER_END_DATE`,`ORDER_CHANGE_DATE`,`SALES_ORDER_STATUS_ID`,`ORDER_REMARK`,`ORDER_ROOM_PRICE`,`ORDER_JOURNEY_PRICE`) values 
(1000,1,'2022-05-22','2022-10-01','2022-10-02','2022-08-14',3,'獨身男子的行程: 一房一行程，有修改日期的訂單，狀態已付款',22000,1500),
(1001,3,'2022-04-02','2022-10-17','2022-10-24','2022-08-14',1,'小屁孩安妮亞:一房一行程，無修改日期的訂單，狀態未付款',5000,4900),
(1002,4,'2022-04-02','2022-10-17','2022-10-24','2022-08-14',2,'家庭的行程: 兩房有行程，無修改日期的訂單，狀態已付款',8000,1800),
(1003,2,'2022-06-01','2022-07-01','2022-07-02','2022-06-02',4,'自動取消的行程: 沒付錢，系統要自動更改修改日期的訂單，狀態已取消',8000,4500),
(1004,2,'2022-06-02','2022-11-03','2022-11-04','2022-08-14',1,'隔天趕快再訂的行程: 跟上一筆訂單內容相同，狀態已付款',5000,3000),
(1005,5,'2022-04-02','2022-05-02','2022-05-09',NULL,3,'隨便建立一張已完成的訂單',5000,NULL);

/*Table structure for table `SALES_ORDER_ITEM` */

DROP TABLE IF EXISTS `SALES_ORDER_ITEM`;

CREATE TABLE `SALES_ORDER_ITEM` (
  `SALES_ORDER_ITEM_ID` int NOT NULL AUTO_INCREMENT COMMENT '訂單明細ID',
  `SALES_ORDER_HEADER_ID` int NOT NULL COMMENT '訂單編號',
  `ROOM_STYLE_ID` int NOT NULL COMMENT '房型ID',
  `ORDER_ROOM_QUANTITY` int NOT NULL COMMENT '訂房數量',
  `ORDER_ROOM_PRICE` int NOT NULL COMMENT '房間單價',
  PRIMARY KEY (`SALES_ORDER_ITEM_ID`),
  KEY `SALES_ORDER_HEADER_ID` (`SALES_ORDER_HEADER_ID`),
  KEY `ROOM_STYLE_ID` (`ROOM_STYLE_ID`),
  CONSTRAINT `sales_order_item_ibfk_1` FOREIGN KEY (`SALES_ORDER_HEADER_ID`) REFERENCES `SALES_ORDER_HEADER` (`SALES_ORDER_HEADER_ID`),
  CONSTRAINT `sales_order_item_ibfk_2` FOREIGN KEY (`ROOM_STYLE_ID`) REFERENCES `ROOM_STYLE` (`ROOM_STYLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2024 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `SALES_ORDER_ITEM` */

insert  into `SALES_ORDER_ITEM`(`SALES_ORDER_ITEM_ID`,`SALES_ORDER_HEADER_ID`,`ROOM_STYLE_ID`,`ORDER_ROOM_QUANTITY`,`ORDER_ROOM_PRICE`) values 
(2016,1001,3001,1,5000),
(2017,1002,3002,1,8000),
(2019,1003,3002,1,8000),
(2020,1004,3001,1,5000),
(2021,1005,3000,1,5000),
(2022,1000,3003,2,7000),
(2023,1000,3001,1,8000);

/*Table structure for table `SALES_ORDER_STATUS` */

DROP TABLE IF EXISTS `SALES_ORDER_STATUS`;

CREATE TABLE `SALES_ORDER_STATUS` (
  `SALES_ORDER_STATUS_ID` int NOT NULL COMMENT '訂單狀態ID',
  `SALES_ORDER_STATUS` varchar(25) NOT NULL COMMENT '訂單狀態名稱',
  PRIMARY KEY (`SALES_ORDER_STATUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `SALES_ORDER_STATUS` */

insert  into `SALES_ORDER_STATUS`(`SALES_ORDER_STATUS_ID`,`SALES_ORDER_STATUS`) values 
(1,'等待付款'),
(2,'已付款'),
(3,'已完成'),
(4,'已取消'),
(5,'客服處理中');

/*Table structure for table `USER` */

DROP TABLE IF EXISTS `USER`;

CREATE TABLE `USER` (
  `USER_ID` int NOT NULL AUTO_INCREMENT COMMENT '會員流水編號',
  `USER_ACCOUNT` varchar(200) NOT NULL COMMENT '會員帳號',
  `USER_PASSWORD` varchar(200) NOT NULL COMMENT '會員密碼',
  `USER_NAME` varchar(30) NOT NULL COMMENT '會員姓名',
  `USER_BIRTHDAY` date NOT NULL COMMENT '會員生日',
  `USER_EMAIL` varchar(200) NOT NULL COMMENT '會員信箱',
  `USER_PHONE` varchar(200) NOT NULL COMMENT '會員手機',
  `EMAIL_VERIFY_STATUS` tinyint(1) NOT NULL,
  `USER_IDENTITYNUMBER` varchar(11) NOT NULL COMMENT '會員身分證字號',
  `USER_RIGISTRATION_DATE` date NOT NULL COMMENT '會員註冊日',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `USER` */

insert  into `USER`(`USER_ID`,`USER_ACCOUNT`,`USER_PASSWORD`,`USER_NAME`,`USER_BIRTHDAY`,`USER_EMAIL`,`USER_PHONE`,`EMAIL_VERIFY_STATUS`,`USER_IDENTITYNUMBER`,`USER_RIGISTRATION_DATE`) values 
(1,'S43246546','A78GRENW56','紐特','1897-02-24','new2@gmail.com','0977777111',1,'C123456789','2022-06-22'),
(2,'w4awg46570','b78Gwfht36','哈利','1980-07-31','harry01111@gmail.com','0965528711',0,'A987654321','2022-06-22'),
(3,'JRIEWOJ492','Adfrety333','安妮亞','2018-12-31','Aniya2333@gmail.com','0911000000',1,'B047264910','2022-04-02'),
(4,'JT4I47425','fjewni583h','洛伊德','1982-01-01','loyid5555@gmail.com','0901111111',0,'B795320765','2022-04-02'),
(5,'WDUL5933','ftpjvoeh56','約兒','1985-03-18','Yoru895393@gmail.com','0989356251',0,'B648831068','2022-04-02'),
(24,'Dety5','Ttd3','Test','1914-04-05','fewthjm@gmail.com','0988777666',1,'A223336666','2022-07-30'),
(25,'Tfjeiwjfd','RGhncmV5ank1Ng==','李偉銘','1914-05-08','john1111@gmail.com','0988777000',1,'A333446666','2022-08-01'),
(26,'greqgr33r4','Adfg4567','hahaha','1913-06-06','tewfjjyt@gmail.com','0988333222',1,'A446667777','2022-08-01'),
(27,'test87user','Ad345','test87user','1913-07-10','test87user@gmail.com','0988777666',1,'X225556666','2022-08-02'),
(29,'Agrnu5788','RHJodWVycjY3','TestBase64','2017-11-13','emmmm@gmail.com','0911111111',1,'D447778888','2022-08-08'),
(30,'Aghui97432','QWQzNDc4OTA=','Test12334','1918-10-08','juoin@fewfe.com','0911872635',1,'S778889999','2022-08-08'),
(31,'Afhj7890','RGV0dHl5aHRyaHQyMzM=','hjeiwgfuei','1927-11-12','few@htj.com','0977444333',1,'G556669999','2022-08-08'),
(32,'Amnuytk56','SGVqZmRvczc4MzI=','ewfhjiul55','1930-12-20','Stret@gfew.com','0988777111',1,'W336669999','2022-08-08'),
(33,'D654jytkyukuy','RGY0NzY1NzY1','fwfewfew','1914-09-09','tjhgmhgd@gmsrs.cim','0966888999',1,'A225557777','2022-08-09');

/*!50106 set global event_scheduler = 1*/;

/* Event structure for event `update_status_endDate` */

/*!50106 DROP EVENT IF EXISTS `update_status_endDate`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`root`@`localhost` EVENT `update_status_endDate` ON SCHEDULE EVERY 1 DAY STARTS '2022-08-13 00:00:01' ON COMPLETION NOT PRESERVE ENABLE DO update ANNOUNCEMENT
set ANM_STATUS = "已下架"
where ANM_END_DATE <= curdate() */$$
DELIMITER ;

/* Event structure for event `update_status_order_end` */

/*!50106 DROP EVENT IF EXISTS `update_status_order_end`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`root`@`localhost` EVENT `update_status_order_end` ON SCHEDULE EVERY 1 MINUTE STARTS '2022-10-06 13:42:32' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE SALES_ORDER_HEADER
	SET SALES_ORDER_STATUS_ID = 3
	WHERE ORDER_END_DATE <= CURDATE() AND SALES_ORDER_STATUS_ID = 2 */$$
DELIMITER ;

/* Event structure for event `update_status_startDate` */

/*!50106 DROP EVENT IF EXISTS `update_status_startDate`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`root`@`localhost` EVENT `update_status_startDate` ON SCHEDULE EVERY 1 DAY STARTS '2022-08-13 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO update ANNOUNCEMENT
set ANM_STATUS = "已上架"
where ANM_START_DATE <= curdate() */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
