-- 建立會員資料表
CREATE TABLE USER(
	USER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '會員流水編號',
    USER_ACCOUNT VARCHAR(25) NOT NULL COMMENT '會員帳號',
    USER_PASSWORD VARCHAR(25) NOT NULL COMMENT '會員密碼',
    USER_NAME VARCHAR(30) NOT NULL COMMENT '會員姓名',
    USER_BIRTHDAY DATE NOT NULL COMMENT '會員生日',
    USER_EMAIL VARCHAR(50) NOT NULL COMMENT '會員信箱',
    USER_PHONE VARCHAR(200) NOT NULL COMMENT '會員手機',
    PHONE_VERIFY_STATUS BOOLEAN NOT NULL COMMENT '手機驗證狀態',
    USER_IDENTITYNUMBER VARCHAR(10) NOT NULL COMMENT '會員身分證字號',
    USER_RIGISTRATION_DATE DATE NOT NULL COMMENT '會員註冊日' 
    
);

-- 新增會員資料
INSERT INTO USER(USER_ACCOUNT, USER_PASSWORD, USER_NAME, USER_BIRTHDAY, USER_EMAIL, USER_PHONE, PHONE_VERIFY_STATUS, USER_IDENTITYNUMBER, USER_RIGISTRATION_DATE)
VALUES
	("S43246546","A78GRENW56","紐特","1897-02-24","Newt35532@gmail.com", "0911432648",TRUE,"C123456789","2022-05-22"),
    ("w4awg46570","b78Gwfht36","哈利","1980-07-31","Harry643408@gmail.com", "0965528704",FALSE,"A987654321","2022-06-22"),
    ("JRIEWOJ492","fwei592j3t4","安妮亞","2018-12-31","Aniya849382@gmail.com", "0988934012",TRUE,"B047264910","2022-04-02"),
    ("JT4I47425","fjewni583h","洛伊德","1982-01-01","Loid9506372@gmail.com", "0903758512",FALSE,"B795320765","2022-04-02"),
    ("WDUL5933","ftpjvoeh56","約兒","1985-03-18","Yoru895393@gmail.com", "0989356251",FALSE,"B648831068","2022-04-02");

SELECT * FROM USER;


-- 建立管理者資料表
CREATE TABLE ADMINISTRATOR(
	ADMINISTRATOR_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '管理者流水編號',
    ADMINISTRATOR_ACCOUNT VARCHAR(25) NOT NULL COMMENT '管理者帳號',
    ADMINISTRATOR_PASSWORD VARCHAR(25) NOT NULL COMMENT '管理者密碼'  
);

-- 新增管理者資料
INSERT INTO ADMINISTRATOR(ADMINISTRATOR_ACCOUNT, ADMINISTRATOR_PASSWORD)
VALUES
	("TGA10204ALL","helloJava");

SELECT * FROM ADMINISTRATOR;