SELECT DISTINCT brandName FROM brand b, products p WHERE b.brandNum=p.brandNum AND brandNum='';

SELECT * FROM products;

SELECT prodNum, prodname, prodprice, prodimg, prodinfo, proddate, brandNum, categoryNum
FROM products
WHERE prodname LIKE '%'||''||'%'
ORDER BY prodDate DESC;

SELECT brandName
FROM brand b, products p
WHERE b.brandNum = p.brandNum
and p.brandNum LIKE '%'||''||'%'
AND p.categoryNum LIKE '%'||'C1'||'%'
AND p.detailNum LIKE '%'||''||'%'
ORDER BY p.prodDate DESC;