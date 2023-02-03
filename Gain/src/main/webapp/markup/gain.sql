
/* Drop Tables */

DROP TABLE haveCoupon CASCADE CONSTRAINTS;
DROP TABLE orderDetails CASCADE CONSTRAINTS;
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE shppingBasket CASCADE CONSTRAINTS;
DROP TABLE products CASCADE CONSTRAINTS;
DROP TABLE brand CASCADE CONSTRAINTS;
DROP TABLE detailInfo CASCADE CONSTRAINTS;
DROP TABLE prodOption CASCADE CONSTRAINTS;
DROP TABLE category CASCADE CONSTRAINTS;
DROP TABLE coupon CASCADE CONSTRAINTS;
DROP TABLE QnA CASCADE CONSTRAINTS;
DROP TABLE rafState CASCADE CONSTRAINTS;
DROP TABLE gainMember CASCADE CONSTRAINTS;
DROP TABLE raffleInfo CASCADE CONSTRAINTS;




/* Create Tables */

-- 브랜드
CREATE TABLE brand
(
	-- 브랜드 번호 : brandNum
	brandNum varchar2(30) NOT NULL,
	-- 브랜드명 : brandName
	brandName varchar2(100),
	PRIMARY KEY (brandNum)
);


-- 카테고리
CREATE TABLE category
(
	-- 카테고리 번호
	categoryNum varchar2(100) NOT NULL,
	-- 카테고리명
	categoryName varchar2(200),
	PRIMARY KEY (categoryNum)
);


-- 쿠폰
CREATE TABLE coupon
(
	-- 쿠폰번호
	couponNum varchar2(100) NOT NULL,
	-- 쿠폰명
	couponName varchar2(200),
	-- 할인율
	couponPercent number,
	-- 쿠폰 유효 기간 : 쿠폰 유효 기간
	couponEndDate date,
	PRIMARY KEY (couponNum)
);


-- 세부항목
CREATE TABLE detailInfo
(
	-- 세부항목 번호
	detailNum varchar2(100) NOT NULL,
	-- 세부항목명
	detailName varchar2(200),
	-- 카테고리 번호
	categoryNum varchar2(100) NOT NULL,
	PRIMARY KEY (detailNum)
);


-- 회원
CREATE TABLE gainMember
(
	-- 아이디 : 아이디
	id varchar2(100) NOT NULL,
	-- 닉네임 : 닉네임
	nickname varchar2(100),
	-- 비밀번호
	pass varchar2(100),
	-- 이름 : 이름
	name varchar2(50),
	-- 휴대폰 번호 : 휴대폰 번호
	phoneNum varchar2(100),
	-- 생일 : 생일
	birth date,
	-- 성별 : 성별
	sex varchar2(20),
	-- 문자 허용 여부 : 문자 허용 여부
	permisSms number,
	-- 메일 허용 여부 : 메일 허용 여부
	permisEmail number,
	-- 앱푸시 허용 여부 : 앱푸시 허용 여부
	permisAppPush number,
	-- 우편발송 허용 여부 : 우편발송 허용 여부
	permisMail number,
	-- 전화안내 허용 여부 : 전화안내 허용 여부
	permisPhone number,
	-- 이용약관 : 이용약관
	useInfo number,
	-- 적립금 : 적립금
	point number,
	-- 주소 : 주소
	address varchar2(1000),
	-- 이메일
	email varchar2(100),
	-- 권한
	auth number,
	PRIMARY KEY (id)
);


-- 보유 쿠폰
CREATE TABLE haveCoupon
(
	-- 주문번호
	orderNum varchar2(100) NOT NULL,
	-- 쿠폰번호
	couponNum varchar2(100) NOT NULL,
	-- 사용 상태
	couponState number
);


-- 주문내역
CREATE TABLE orderDetails
(
	-- 주문번호
	orderNum varchar2(100) NOT NULL,
	-- 상품번호 : prodNum
	prodNum varchar2(30) DEFAULT '' NOT NULL,
	-- 아이디 : 아이디
	id varchar2(100) NOT NULL,
	-- 주문일자
	orderDate date,
	-- 상태
	state varchar2(50),
	-- 개수
	cnt number,
	-- 쿠폰번호
	couponNum varchar2(100) NOT NULL,
	-- 배송지 메모
	orderMsg varchar2(2000),
	PRIMARY KEY (orderNum)
);


-- 옵션
CREATE TABLE prodOption
(
	-- 옵션 번호
	optionNum varchar2(100) NOT NULL,
	-- 옵션명
	optionName varchar2(200),
	-- 카테고리 번호
	categoryNum varchar2(100) NOT NULL,
	PRIMARY KEY (optionNum)
);


-- 상품
CREATE TABLE products
(
	-- 상품번호 : prodNum
	prodNum varchar2(30) DEFAULT '' NOT NULL,
	-- 상품명 : 상품명
	prodName varchar2(1000) NOT NULL,
	-- 가격 : prodPrice
	prodPrice number NOT NULL,
	-- 상품 이미지 : 상품 이미지
	prodImg varchar2(1000),
	-- 상품 상세 설명 : 상품 상세 설명
	prodInfo varchar2(1000),
	-- 등록일 : prodDate
	prodDate date,
	-- 브랜드 번호 : brandNum
	brandNum varchar2(30) NOT NULL,
	-- 카테고리 번호
	categoryNum varchar2(100) NOT NULL,
	PRIMARY KEY (prodNum)
);


-- QnA
CREATE TABLE QnA
(
	-- 문의유형 : category
	category varchar2(50),
	-- 제목
	title varchar2(500),
	-- 내용
	content varchar2(2000),
	-- 등록일
	regDate date,
	-- 문의 상태
	state varchar2(30),
	-- 답변 : reply
	reply varchar2(2000),
	-- 아이디 : 아이디
	id varchar2(100) NOT NULL
);


-- 래플
CREATE TABLE raffleInfo
(
	-- 래플번호
	rafId varchar2(100) NOT NULL,
	-- 상품명 : pname
	pname varchar2(200),
	-- 가격
	price number,
	-- 이미지
	imgSrc varchar2(1000),
	-- 시작일
	startDate date,
	-- 종료일
	endDate date,
	-- 당첨일
	choDate date,
	-- 응모 결과
	result varchar2(50),
	PRIMARY KEY (rafId)
);


-- 응모 현황
CREATE TABLE rafState
(
	-- 래플번호
	rafId varchar2(100) NOT NULL,
	-- 아이디 : 아이디
	id varchar2(100) NOT NULL
);


-- 리뷰
CREATE TABLE review
(
	-- 리뷰 내용 : 리뷰 내용
	content varchar2(2000),
	-- 아이디 : 아이디
	id varchar2(100) NOT NULL,
	-- 상품번호 : prodNum
	prodNum varchar2(30) DEFAULT '' NOT NULL
);


-- 장바구니
CREATE TABLE shppingBasket
(
	-- 아이디 : 아이디
	id varchar2(100) NOT NULL,
	-- 상품번호 : prodNum
	prodNum varchar2(30) DEFAULT '' NOT NULL
);



/* Create Foreign Keys */

ALTER TABLE products
	ADD FOREIGN KEY (brandNum)
	REFERENCES brand (brandNum)
;


ALTER TABLE detailInfo
	ADD FOREIGN KEY (categoryNum)
	REFERENCES category (categoryNum)
;


ALTER TABLE prodOption
	ADD FOREIGN KEY (categoryNum)
	REFERENCES category (categoryNum)
;


ALTER TABLE products
	ADD FOREIGN KEY (categoryNum)
	REFERENCES category (categoryNum)
;


ALTER TABLE haveCoupon
	ADD FOREIGN KEY (couponNum)
	REFERENCES coupon (couponNum)
;


ALTER TABLE orderDetails
	ADD FOREIGN KEY (couponNum)
	REFERENCES coupon (couponNum)
;


ALTER TABLE orderDetails
	ADD FOREIGN KEY (id)
	REFERENCES gainMember (id)
;


ALTER TABLE QnA
	ADD FOREIGN KEY (id)
	REFERENCES gainMember (id)
;


ALTER TABLE rafState
	ADD FOREIGN KEY (id)
	REFERENCES gainMember (id)
;


ALTER TABLE review
	ADD FOREIGN KEY (id)
	REFERENCES gainMember (id)
;


ALTER TABLE shppingBasket
	ADD FOREIGN KEY (id)
	REFERENCES gainMember (id)
;


ALTER TABLE haveCoupon
	ADD FOREIGN KEY (orderNum)
	REFERENCES orderDetails (orderNum)
;


ALTER TABLE orderDetails
	ADD FOREIGN KEY (prodNum)
	REFERENCES products (prodNum)
;


ALTER TABLE review
	ADD FOREIGN KEY (prodNum)
	REFERENCES products (prodNum)
;


ALTER TABLE shppingBasket
	ADD FOREIGN KEY (prodNum)
	REFERENCES products (prodNum)
;


ALTER TABLE rafState
	ADD FOREIGN KEY (rafId)
	REFERENCES raffleInfo (rafId)
;



/* Comments */

COMMENT ON TABLE brand IS '브랜드';
COMMENT ON COLUMN brand.brandNum IS '브랜드 번호 : brandNum';
COMMENT ON COLUMN brand.brandName IS '브랜드명 : brandName';
COMMENT ON TABLE category IS '카테고리';
COMMENT ON COLUMN category.categoryNum IS '카테고리 번호';
COMMENT ON COLUMN category.categoryName IS '카테고리명';
COMMENT ON TABLE coupon IS '쿠폰';
COMMENT ON COLUMN coupon.couponNum IS '쿠폰번호';
COMMENT ON COLUMN coupon.couponName IS '쿠폰명';
COMMENT ON COLUMN coupon.couponPercent IS '할인율';
COMMENT ON COLUMN coupon.couponEndDate IS '쿠폰 유효 기간 : 쿠폰 유효 기간';
COMMENT ON TABLE detailInfo IS '세부항목';
COMMENT ON COLUMN detailInfo.detailNum IS '세부항목 번호';
COMMENT ON COLUMN detailInfo.detailName IS '세부항목명';
COMMENT ON COLUMN detailInfo.categoryNum IS '카테고리 번호';
COMMENT ON TABLE gainMember IS '회원';
COMMENT ON COLUMN gainMember.id IS '아이디 : 아이디';
COMMENT ON COLUMN gainMember.nickname IS '닉네임 : 닉네임';
COMMENT ON COLUMN gainMember.pass IS '비밀번호';
COMMENT ON COLUMN gainMember.name IS '이름 : 이름';
COMMENT ON COLUMN gainMember.phoneNum IS '휴대폰 번호 : 휴대폰 번호';
COMMENT ON COLUMN gainMember.birth IS '생일 : 생일';
COMMENT ON COLUMN gainMember.sex IS '성별 : 성별';
COMMENT ON COLUMN gainMember.permisSms IS '문자 허용 여부 : 문자 허용 여부';
COMMENT ON COLUMN gainMember.permisEmail IS '메일 허용 여부 : 메일 허용 여부';
COMMENT ON COLUMN gainMember.permisAppPush IS '앱푸시 허용 여부 : 앱푸시 허용 여부';
COMMENT ON COLUMN gainMember.permisMail IS '우편발송 허용 여부 : 우편발송 허용 여부';
COMMENT ON COLUMN gainMember.permisPhone IS '전화안내 허용 여부 : 전화안내 허용 여부';
COMMENT ON COLUMN gainMember.useInfo IS '이용약관 : 이용약관';
COMMENT ON COLUMN gainMember.point IS '적립금 : 적립금';
COMMENT ON COLUMN gainMember.address IS '주소 : 주소';
COMMENT ON COLUMN gainMember.email IS '이메일';
COMMENT ON COLUMN gainMember.auth IS '권한';
COMMENT ON TABLE haveCoupon IS '보유 쿠폰';
COMMENT ON COLUMN haveCoupon.orderNum IS '주문번호';
COMMENT ON COLUMN haveCoupon.couponNum IS '쿠폰번호';
COMMENT ON COLUMN haveCoupon.couponState IS '사용 상태';
COMMENT ON TABLE orderDetails IS '주문내역';
COMMENT ON COLUMN orderDetails.orderNum IS '주문번호';
COMMENT ON COLUMN orderDetails.prodNum IS '상품번호 : prodNum';
COMMENT ON COLUMN orderDetails.id IS '아이디 : 아이디';
COMMENT ON COLUMN orderDetails.orderDate IS '주문일자';
COMMENT ON COLUMN orderDetails.state IS '상태';
COMMENT ON COLUMN orderDetails.cnt IS '개수';
COMMENT ON COLUMN orderDetails.couponNum IS '쿠폰번호';
COMMENT ON COLUMN orderDetails.orderMsg IS '배송지 메모';
COMMENT ON TABLE prodOption IS '옵션';
COMMENT ON COLUMN prodOption.optionNum IS '옵션 번호';
COMMENT ON COLUMN prodOption.optionName IS '옵션명';
COMMENT ON COLUMN prodOption.categoryNum IS '카테고리 번호';
COMMENT ON TABLE products IS '상품';
COMMENT ON COLUMN products.prodNum IS '상품번호 : prodNum';
COMMENT ON COLUMN products.prodName IS '상품명 : 상품명';
COMMENT ON COLUMN products.prodPrice IS '가격 : prodPrice';
COMMENT ON COLUMN products.prodImg IS '상품 이미지 : 상품 이미지';
COMMENT ON COLUMN products.prodInfo IS '상품 상세 설명 : 상품 상세 설명';
COMMENT ON COLUMN products.prodDate IS '등록일 : prodDate';
COMMENT ON COLUMN products.brandNum IS '브랜드 번호 : brandNum';
COMMENT ON COLUMN products.categoryNum IS '카테고리 번호';
COMMENT ON TABLE QnA IS 'QnA';
COMMENT ON COLUMN QnA.category IS '문의유형 : category';
COMMENT ON COLUMN QnA.title IS '제목';
COMMENT ON COLUMN QnA.content IS '내용';
COMMENT ON COLUMN QnA.regDate IS '등록일';
COMMENT ON COLUMN QnA.state IS '문의 상태';
COMMENT ON COLUMN QnA.reply IS '답변 : reply';
COMMENT ON COLUMN QnA.id IS '아이디 : 아이디';
COMMENT ON TABLE raffleInfo IS '래플';
COMMENT ON COLUMN raffleInfo.rafId IS '래플번호';
COMMENT ON COLUMN raffleInfo.pname IS '상품명 : pname';
COMMENT ON COLUMN raffleInfo.price IS '가격';
COMMENT ON COLUMN raffleInfo.imgSrc IS '이미지';
COMMENT ON COLUMN raffleInfo.startDate IS '시작일';
COMMENT ON COLUMN raffleInfo.endDate IS '종료일';
COMMENT ON COLUMN raffleInfo.choDate IS '당첨일';
COMMENT ON COLUMN raffleInfo.result IS '응모 결과';
COMMENT ON TABLE rafState IS '응모 현황';
COMMENT ON COLUMN rafState.rafId IS '래플번호';
COMMENT ON COLUMN rafState.id IS '아이디 : 아이디';
COMMENT ON TABLE review IS '리뷰';
COMMENT ON COLUMN review.content IS '리뷰 내용 : 리뷰 내용';
COMMENT ON COLUMN review.id IS '아이디 : 아이디';
COMMENT ON COLUMN review.prodNum IS '상품번호 : prodNum';
COMMENT ON TABLE shppingBasket IS '장바구니';
COMMENT ON COLUMN shppingBasket.id IS '아이디 : 아이디';
COMMENT ON COLUMN shppingBasket.prodNum IS '상품번호 : prodNum';



