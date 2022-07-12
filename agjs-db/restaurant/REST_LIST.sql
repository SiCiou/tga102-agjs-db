create table REST_LIST(
REST_ID INT NOT NULL,
REST_NAME VARCHAR(50) NOT NULL,
REST_PIC LONGBLOB , 
REST_FLOOR VARCHAR(50),
REST_TIME VARCHAR(50),
REST_INTRO VARCHAR(200),
INTRO_TIME DATETIME,
PRIMARY KEY (REST_ID));

INSERT INTO REST_LIST(
REST_ID, 
REST_NAME,
REST_FLOOR,
REST_TIME,
REST_INTRO,
INTRO_TIME)VALUE(
1,
"JAVA STEAK HOUSE",
"1F",
"12:00~21:00",
"一樓的Java Steak House美式餐廳為您帶來美國家鄉料理以及歡樂輕鬆的用餐氛圍。Java Steak House餐廳結合台北市中山區娛樂購物的地點機能，提供您一個歡趣的都會食饗體驗。透過全景落地窗, 一邊悠閒地享受美食, 一邊欣賞林蔭大道美景。",
"2022-06-22 23:00:00");

INSERT INTO REST_LIST(
REST_ID, 
REST_NAME,
REST_FLOOR,
REST_TIME,
REST_INTRO,
INTRO_TIME)VALUE(
2,
"MONOHIYA",
"2F",
"12:00~21:00",
"精湛的日式料理功夫及盤飾藝術，呈現精緻懷石料理與和牛涮涮鍋的經典美味。 壽司檯板前座位提供無菜單料理",
"2022-06-22 23:00:00");

INSERT INTO REST_LIST(
REST_ID, 
REST_NAME,
REST_FLOOR,
REST_TIME,
REST_INTRO,
INTRO_TIME)VALUE(
3,
"102 BAR",
"50F",
"18:00~03:00",
"沐浴月光下，邊啜飲調酒師的特調雞尾酒或上等葡萄酒，邊俯瞰城市絕美夜景，伴隨著觸動人心的音律，在遠處燈火一明一滅中，發現港都絢爛風情。",
"2022-06-22 23:00:00");