package heejun.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import heejun.dao.ProductDao;
import heejun.vo.Product;

@Service
public class ProductService {
	@Autowired(required = false)
	private ProductDao dao;
	
	// 상품 등록 service
	public void insertProd(Product ins) {
		dao.insertProd(ins);
	}
}
