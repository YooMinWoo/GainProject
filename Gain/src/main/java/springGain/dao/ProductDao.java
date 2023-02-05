package springGain.dao;

import java.util.List;

import springGain.vo.Brand;
import springGain.vo.Category;
import springGain.vo.DetailInfo;
import springGain.vo.Product;

public interface ProductDao {
	
	// 상품 조회
	public List<Product> getProduct(Product sch);
	
	// 상품 등록 Dao
	public void insertProd(Product ins);
	
	// 브랜드 combo
	public List<Brand> getBrand();
	
	// 카테고리 combo
	public List<Category> getCategory();
	
	// 세부항목 comvo
	public List<DetailInfo> getDetailInfo();
}
