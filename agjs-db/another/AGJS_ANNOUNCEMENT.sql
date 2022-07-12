-- 建立公告類型資料表
CREATE TABLE ANNOUNCEMENT_TYPE(
	ANM_TYPE_ID INT NOT NULL COMMENT '公告類型種類' PRIMARY KEY,
    ANM_TYPE VARCHAR(10) COMMENT '公告類型'
);

-- 新增公告類型
INSERT INTO ANNOUNCEMENT_TYPE(ANM_TYPE_ID, ANM_TYPE)
VALUES
	(1, '住房優惠'),
    (2, '餐飲優惠'),
    (3, '其他');


-- 建立公告資料表
CREATE TABLE ANNOUNCEMENT(
	ANM_ID INT NOT NULL AUTO_INCREMENT COMMENT '公告編號' PRIMARY KEY,
	ADMINISTRATOR_ID INT NOT NULL COMMENT '管理者流水編號(外來鍵)',
    ANM_ORDER_ID INT NOT NULL COMMENT '公告排序',
    ANM_STATUS_ID BOOLEAN NOT NULL COMMENT '公告狀態',
    ANM_TITLE VARCHAR(50) NOT NULL COMMENT '公告標題',
    ANM_CONTENT VARCHAR(1000) NOT NULL COMMENT '公告內文',
    ANM_TYPE_ID INT NOT NULL COMMENT '公告類型(外來鍵)',
    ANM_START_DATE DATE NOT NULL COMMENT '上架日期',
    ANM_END_DATE DATE COMMENT '下架日期',
	CONSTRAINT FK_ANM_ADMINISTRATOR_ID FOREIGN KEY (ADMINISTRATOR_ID) REFERENCES ADMINISTRATOR (ADMINISTRATOR_ID),
    CONSTRAINT FK_ANNOUNCEMENT_ANM_TYPE_ID FOREIGN KEY (ANM_TYPE_ID) REFERENCES ANNOUNCEMENT_TYPE (ANM_TYPE_ID)
);

-- 新增公告
INSERT INTO ANNOUNCEMENT(ADMINISTRATOR_ID, ANM_ORDER_ID, ANM_STATUS_ID, ANM_TITLE, ANM_CONTENT, ANM_TYPE_ID, ANM_START_DATE, ANM_END_DATE)
VALUES
	(1, 2, 1, "「無三不成禮」小黃卡住宿禮遇", "打疫苗享折扣！自即日起至 2022/8/30前推出「無三不成禮」小黃卡專屬住宿禮遇。於入住時出示紙本疫苗卡或健保 App ，打一劑享延遲退房至中午12點、打兩劑享延遲退房至下午1點、打滿三劑則可延遲退房至下午2點，再贈送1,000元餐廳抵用券，不限平假日皆可使用，每房最多一次。", 1, "2021-5-1", "2022-08-31"),
    (1, 1, 1, "防疫政策說明", "為因應防疫規範，建議賓客可下載「臺灣社交距離App」，並配合佩戴口罩、酒精消毒及測量體溫。此外，提醒入住賓客請務必遵守以下防疫規定：1.離開客房時請全程配戴口罩。2.避免不必要移動、活動或集會。3.房內人數以原同住家人，並依房型所登記之人數為原則。另依觀光局指示，房內禁止群聚開趴或唱歌等行為，致生傳染風險及觸法。4.自我健康監測(有症狀應就醫)。不便之處，敬祈見諒。共同守護健康，攜手努力為防疫盡一份心力！", 3, "2022-03-01", NULL),
	(1, 1, 1, "防範詐騙提醒", "防止新型態網路詐騙，呼籲賓客提高警覺防詐騙！！好旅提醒您，當您使用線上系統完成交易後，本飯店不會以電話通知您:因網路分期付款發生設定錯誤等理由而要求您操作ATM解除、變更付款方式或補繳金額；亦不會以電話通知要求您提供信用卡帳號或個人及銀行相關資料。請您務必提高警覺以免上當受騙，如接獲不明及可疑的電話或簡訊提出上述要求時，請勿提供任何資料，歡迎您聯繫好旅查證或並請儘速反應至警政署反詐騙諮詢專線165或內政部警政署全民防騙網遠離詐騙三『不』！不碰ATM！不說個人資料！不要回撥陌生電話！■ 不碰ATM詐騙集團會要求客戶去ATM轉換英文操作介面，是為了誘使您轉帳。ATM沒有退款、解除分期付款…等功能，請您務必小心。好旅不會任意變更已付款的訂單，不會要求您依照指示操作使用ATM。■ 不說信用卡資料 好旅不會以電話請您提供銀行帳戶、信用卡資料；亦不會以「問卷」或「中獎」形式通知您提供個人資料或要求匯款。■ 不回撥陌生電話詐騙集團會篡改電信資料，轉來電顯示或是發送簡訊，若您接獲此類可疑電話或簡訊，請與好旅查證或撥打165反詐騙諮詢專線查證，以確保安全。", 3, "2021-01-01", NULL),
	(1, 3, 2, "壽星專屬 厚禮獨享", "Celebrate Your Birthday with Us! 與您共慶生日美好時光! 本月壽星於現場出示證明文件認證，即贈蛋糕單片一份!", 2, "2022-09-01", "2022-10-30"),
    (1, 3, 0, "高壓電年度檢查休館通知", "感謝您一直以來對於好旅的支持與愛護。依照政府法規，飯店將進行年度高壓電力檢查，並將於2021/11/14(一)中午 12 點至 2021/11/15(二)下午 3 點暫時關閉飯店，2021/11/15(二)下午 3 點恢復入住手續服務。造成不便，敬請見諒。", 3, "2021-06-01", "2021-11-16");


-- 建立公告圖片資料表 
CREATE TABLE ANNOUNCEMENT_PICTURE(
	ANM_PICTURE_ID INT NOT NULL AUTO_INCREMENT COMMENT '公告圖片ID' PRIMARY KEY,
	ANM_ID INT COMMENT '公告編號(外來鍵)',
    ANM_PICTURE LONGBLOB COMMENT '公告圖片',
    CONSTRAINT FK_ANNOUNCEMENT_PICTURE_ANM_TYPE_ID FOREIGN KEY (ANM_ID) REFERENCES ANNOUNCEMENT (ANM_ID)
);

-- 新增公告圖片
INSERT INTO ANNOUNCEMENT_PICTURE(ANM_ID, ANM_PICTURE)
VALUES
	(1, NULL),
    (3, NULL);