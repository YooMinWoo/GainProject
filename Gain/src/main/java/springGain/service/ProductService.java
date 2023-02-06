package springGain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springGain.dao.ProductDao;
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
	// 상품 등록 service
	public void insertProd(Product ins) {
		dao.insertProd(ins);
	}
}
