create table REST_TIME_MONEY(
MONEY_ID INT NOT NULL,
REST_ID INT NOT NULL,
MONEY INT NOT NULL, 
MONEY_CONTENT VARCHAR(100),
PRIMARY KEY (MONEY_ID),
FOREIGN KEY (REST_ID)REFERENCES REST_LIST(REST_ID));

INSERT INTO REST_TIME_MONEY(
MONEY_ID, REST_ID, MONEY, MONEY_CONTENT)VALUE(
1, 1, 1699, "雙人午餐組合");

INSERT INTO REST_TIME_MONEY(
MONEY_ID, REST_ID, MONEY, MONEY_CONTENT)VALUE(
2, 1, 2399, "四人午餐組合");

INSERT INTO REST_TIME_MONEY(
MONEY_ID, REST_ID, MONEY, MONEY_CONTENT)VALUE(
3, 2, 1788, "雙人晚餐特盛");

INSERT INTO REST_TIME_MONEY(
MONEY_ID, REST_ID, MONEY, MONEY_CONTENT)VALUE(
4, 2, 2288, "四人午餐超超盛");

INSERT INTO REST_TIME_MONEY(
MONEY_ID, REST_ID, MONEY, MONEY_CONTENT)VALUE(
5, 3, 699, "單人無限暢飲");