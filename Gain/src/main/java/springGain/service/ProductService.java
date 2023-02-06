package springGain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springGain.dao.ProductDao;
import springGain.vo.Brand;
import springGain.vo.Category;
import springGain.vo.DetailInfo;
import springGain.vo.Option;
import springGain.vo.Product;

@Service
public class ProductService {
	@Autowired(required = false)
	private ProductDao dao;
	
	// 상품 검색 service
	public List<Product> getProduct(Product sch){
		if(sch.getProdName()==null) sch.setProdName("");
		
		return dao.getProduct(sch);
	}
	
	// 상품 상세조회
	public Product productDetail(String prodNum) {
		
		
		return dao.productDetail(prodNum);
	}
	
	// 상품 등록 service
	public void insertProd(Product ins) {
		dao.insertProd(ins);
	}
	
	// 상품 삭제
	public void deleteProd(String prodNum) {
		dao.deleteProd(prodNum);
	}
	
	// 카테고리 이름 출력
	public Category getCategoryName(String categoryNum) {
		
		return dao.getCategoryName(categoryNum);
	}
	
	// 세부항목 이름 출력
	public List<DetailInfo> getDetailName(String categoryNum) {
		
		return dao.getDetailName(categoryNum);
	}
	
	// 옵션
	public List<Option> getOption(String categoryNum){
		
		return dao.getOption(categoryNum);
	}
	
	// 브랜드 combo
	public List<Brand> getBrand(){
		
		return dao.getBrand();
	}
	
	// 카테고리 combo
	public List<Category> getCategory(){
		
		return dao.getCategory();
	}
	
	// 세부항목 combo
	public List<DetailInfo> getDetailInfo(){
		
		return dao.getDetailInfo();
	}
}
