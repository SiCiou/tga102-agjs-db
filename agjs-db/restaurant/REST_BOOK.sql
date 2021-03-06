create table REST_BOOK(
REST_BOOK_ID INT NOT NULL AUTO_INCREMENT,
SALES_ORDER_HEADER_ID INT NOT NULL,
REST_ID INT NOT NULL,
REST_DATE DATE NOT NULL,
USER_NAME VARCHAR(30),
REST_NUM INT NOT NULL,
REST_TEL VARCHAR(50),
REST_NOTE VARCHAR(100),
PRIMARY KEY (REST_BOOK_ID),
FOREIGN KEY (REST_ID)REFERENCES REST_LIST(REST_ID),
-- FOREIGN KEY (SALES_ORDER_HEADER_ID)REFERENCES SALES_ORDER_HEADER(SALES_ORDER_HEADER_ID));

ALTER TABLE REST_BOOK AUTO_INCREMENT = 15000;

INSERT INTO REST_BOOK(
SALES_ORDER_HEADER_ID, REST_ID, REST_DATE, USER_NAME, REST_NUM, REST_TEL, REST_NOTE)VALUE(
1000, 1, "2022-06-22", "大吳", 2, "0912345678", "慶生");

INSERT INTO REST_BOOK(
SALES_ORDER_HEADER_ID, REST_ID, REST_DATE, USER_NAME, REST_NUM, REST_TEL, REST_NOTE)VALUE(
1001, 1, "2022-07-22", "小吳", 10, "0912222222", "公司聚餐");

INSERT INTO REST_BOOK(
SALES_ORDER_HEADER_ID, REST_ID, REST_DATE, USER_NAME, REST_NUM, REST_TEL, REST_NOTE)VALUE(
1002, 1, "2022-08-20", "怡蓉", 7, "0912333333", "相親");

INSERT INTO REST_BOOK(
SALES_ORDER_HEADER_ID, REST_ID, REST_DATE, USER_NAME, REST_NUM, REST_TEL, REST_NOTE)VALUE(
1003, 2, "2022-07-02", "偉銘", 8, "0912344444", "嬰兒4位");

INSERT INTO REST_BOOK(
SALES_ORDER_HEADER_ID, REST_ID, REST_DATE, USER_NAME, REST_NUM, REST_TEL, REST_NOTE)VALUE(
1004, 2, "2022-06-29", "惠民", 4, "0912345555", "不吃香菜");

INSERT INTO REST_BOOK(
SALES_ORDER_HEADER_ID, REST_ID, REST_DATE, USER_NAME, REST_NUM, REST_TEL, REST_NOTE)VALUE(
1005, 3, "2022-06-30", "Ming", 1, "0912345666", "失戀");