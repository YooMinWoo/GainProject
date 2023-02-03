
/* Drop Tables */

DROP TABLE products CASCADE CONSTRAINTS;
DROP TABLE brand CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE brand
(
	-- brandNum
	brandNum varchar2(30) NOT NULL,
	-- brandName
	brandName varchar2(100),
	PRIMARY KEY (brandNum)
);


CREATE TABLE products
(
	-- prodNum
	prodNum varchar2(30) DEFAULT '' NOT NULL,
	-- 상품명
	prodName varchar2(100) NOT NULL,
	-- prodPrice
	prodPrice number NOT NULL,
	-- prodSale
	prodSale number,
	-- 상품 이미지
	prodImg varchar2(200),
	-- 상품 상세 설명
	prodInfo varchar2(1000),
	-- prodDate
	prodDate date,
	-- brandNum
	brandNum varchar2(30) NOT NULL,
	PRIMARY KEY (prodNum)
);



/* Create Foreign Keys */

ALTER TABLE products
	ADD FOREIGN KEY (brandNum)
	REFERENCES brand (brandNum)
;



/* Comments */

COMMENT ON COLUMN brand.brandNum IS 'brandNum';
COMMENT ON COLUMN brand.brandName IS 'brandName';
COMMENT ON COLUMN products.prodNum IS 'prodNum';
COMMENT ON COLUMN products.prodName IS '상품명';
COMMENT ON COLUMN products.prodPrice IS 'prodPrice';
COMMENT ON COLUMN products.prodSale IS 'prodSale';
COMMENT ON COLUMN products.prodImg IS '상품 이미지';
COMMENT ON COLUMN products.prodInfo IS '상품 상세 설명';
COMMENT ON COLUMN products.prodDate IS 'prodDate';
COMMENT ON COLUMN products.brandNum IS 'brandNum';



