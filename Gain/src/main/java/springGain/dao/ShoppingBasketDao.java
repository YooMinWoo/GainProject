package springGain.dao;

import java.util.List;

import springGain.vo.Product;

public interface ShoppingBasketDao {
	
	// 장바구니 리스트
	public List<Product> getSBList(String id);

}
