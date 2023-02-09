/*
# 배송지
(회원db)
주소
이름
전화번호
 */
SELECT * FROM GAINMEMBER;

SELECT * FROM COUPON;
--couponnum, couponname,couponpercent, couponendate

/*
	-- 아이디
	id varchar2(100) NOT NULL,
	-- 쿠폰번호
	couponNum varchar2(100) NOT NULL,
	-- 사용 상태
	couponState number
**/

SELECT id, address, phonenum 
FROM GAINMEMBER
WHERE id='himan';

SELECT * FROM products;

  SELECT id, address, phonenum 
  FROM GAINMEMBER
  WHERE id like '%'||'' ||'%';

/*

# 상품정보
상품 번호 prodNum
상품 이미지 prodImg
상품명 prodName
배송날짜: 파일 업로드 +3 일 

*/
SELECT * FROM products;
 
SELECT prodImg, prodName
FROM products
WHERE PRODNUM LIKE '%'||'' ||'%';
 
 \heejun\a.p.c 남성 샌들.jpg
 
 
 
/*
# 쿠폰 
할인쿠폰 
적립금 
*/

/*
# 최종결제금액
상품 금액 

*/