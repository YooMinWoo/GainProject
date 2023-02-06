CREATE SEQUENCE Gain.coupon_seq
	INCREMENT BY 1
	START WITH 1000
	MINVALUE 1000
	MAXVALUE 9999
	nocycle
	nocache;

-- 쿠폰 검색문

-- 예시 쿠폰 생성
INSERT INTO COUPON VALUES (
	'CP'|| coupon_seq.NEXTVAL,
	'[02월 생일 기념]5% 할인 쿠폰',
	5,
	to_date('2023-02-28','YYYY-MM-DD')
);

INSERT INTO COUPON VALUES (
	'CP'|| coupon_seq.NEXTVAL,
	'[발렌타인데이]10% 할인 쿠폰',
	10,
	to_date('2023-02-14','YYYY-MM-DD')
);

INSERT INTO COUPON VALUES (
	'CP'|| coupon_seq.NEXTVAL,
	'[02월 생일 기념]5% 할인 쿠폰',
	5,
	to_date('2023-01-31','YYYY-MM-DD')
);


