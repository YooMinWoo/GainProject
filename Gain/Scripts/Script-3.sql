
	
SELECT COUPONNUM, COUPONNAME, COUPONPERCENT, TO_CHAR(COUPONENDDATE, 'YYYY-MM-DD')COUPONENDDATE
	FROM coupon
	WHERE couponName Like '%'||''||'%'
	ORDER BY COUPONNUM;
	

INSERT INTO COUPON VALUES (
	'CP'|| coupon_seq.NEXTVAL,
	'[10주년 이벤트 당첨자]30% 할인 쿠폰',
	30,
	to_date('2023-04-02','YYYY-MM-DD')
);
INSERT INTO COUPON VALUES (
	'CP'|| coupon_seq.NEXTVAL,
	#{couponName},
	#{couponPercent},
	to_date(#{couponEndDate},'YYYY-MM-DD')
);

DROP TABLE haveCoupon CASCADE CONSTRAINTS;

-- 보유 쿠폰
CREATE TABLE haveCoupon
(
	-- 아이디
	id varchar2(100) NOT NULL,
	-- 쿠폰번호
	couponNum varchar2(100) NOT NULL,
	-- 사용 상태
	couponState number
);


SELECT * FROM HAVECOUPON;
SELECT * FROM coupon;
SELECT * FROM ORDERDETAILS;
SELECT * FROM PRODUCTS;
SELECT * FROM SHPPINGBASKET;
SELECT * FROM GAINMEMBER;

-- 장바구니 추가
INSERT INTO SHPPINGBASKET VALUES ('himan','P1');
INSERT INTO SHPPINGBASKET VALUES (#{id},#{prodNum})

-- 장바구니 조회
SELECT p.*
FROM PRODUCTS p, SHPPINGBASKET s 
WHERE p.PRODNUM = s.PRODNUM
AND s.id = 'himan';


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

