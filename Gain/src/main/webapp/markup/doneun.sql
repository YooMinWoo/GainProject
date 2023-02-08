/*
# 배송지
(회원db)
주소
이름
전화번호
 */
SELECT * FROM GAINMEMBER;


SELECT id, address, phonenum 
FROM GAINMEMBER
WHERE id='himan';

SELECT * FROM products;

  SELECT id, address, phonenum 
  FROM GAINMEMBER
  WHERE id like '%'||'' ||'%';

/*

# 상품정보
상품 이미지
상품명
배송날짜: 파일 업로드 +3 일 
*/

/*
# 쿠폰 
할인쿠폰 
적립금 
*/

/*
# 최종결제금액
상품 금액 

*/