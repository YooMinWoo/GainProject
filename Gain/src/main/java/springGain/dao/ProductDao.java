package springGain.dao;

import java.util.List;

import springGain.vo.Product;

public interface ProductDao {
	
	// 상품 조회
	public List<Product> getProduct(Product sch);
	
	// 상품 등록 Dao
	public void insertProd(Product ins);
}
