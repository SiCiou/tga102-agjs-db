
-- 設定要使用的是AGJS的DB
use AGJS;

-- 測試完刪除用
-- drop table CS_MAIL;

-- 檢查建立用
-- select * from CS_MAIL;

-- 建立"客服信箱"的table
create table AGJS.CS_MAIL (
  FAQ_FORM_ID int not null auto_increment comment '問題表單編號' primary key,
  FAQ_TYPE_NAME varchar(4) comment '問題種類名稱',
  USER_NAME varchar(30) not null comment '使用者姓名',
  USER_PHONE varchar(15) comment '使用者手機',
  USER_EMAIL varchar(50) not null comment '使用者信箱',
  CONTENT_TEXT varchar(100) not null comment '內容說明',
  CREATE_DATE date comment '建立日期'
);	

-- 建立初始資料
INSERT INTO CS_MAIL (FAQ_FORM_ID,FAQ_TYPE_NAME,USER_NAME,USER_PHONE,USER_EMAIL,CONTENT_TEXT,CREATE_DATE) VALUE (001,'訂房諮詢','林建生','0800092000','Adam0800@gmail.com','您好我希望訂6月23的房間','2022-06-22');
INSERT INTO CS_MAIL (FAQ_FORM_ID,FAQ_TYPE_NAME,USER_NAME,USER_PHONE,USER_EMAIL,CONTENT_TEXT,CREATE_DATE) VALUE (002,'餐飲諮詢','巴度妖','0228825252','Antony0228@gmail.com','請幫我預訂6月24中午的2位','2022-06-23');
INSERT INTO CS_MAIL (FAQ_FORM_ID,FAQ_TYPE_NAME,USER_NAME,USER_PHONE,USER_EMAIL,CONTENT_TEXT,CREATE_DATE) VALUE (003,'住宿諮詢','酉曾子','0900995995','Eamonn995@gmail.com','你們的房間電視打不開','2022-06-24');
INSERT INTO CS_MAIL (FAQ_FORM_ID,FAQ_TYPE_NAME,USER_NAME,USER_PHONE,USER_EMAIL,CONTENT_TEXT,CREATE_DATE) VALUE (004,'行程諮詢','澆遊趣','0980989898','GoGo9898@gmail.com','你們行程實在是太棒了!!','2022-06-25');
INSERT INTO CS_MAIL (FAQ_FORM_ID,FAQ_TYPE_NAME,USER_NAME,USER_PHONE,USER_EMAIL,CONTENT_TEXT,CREATE_DATE) VALUE (005,'其他諮詢','陳累了','0800123456','Duke9487945@gmail.com','關於一些問題我希望能夠改進','2022-06-26');
