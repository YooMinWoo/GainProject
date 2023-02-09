package springGain.dao;

import java.util.List;

import springGain.vo.Product;
import springGain.vo.ShoppingBasket;

public interface ShoppingBasketDao {
	
	// 장바구니 리스트
	public List<Product> getSBList(String id);

	// 장바구니 등록
	public void addCart(ShoppingBasket ShoppingBasket);
	
	// 장바구니 삭제
	public void delCart(ShoppingBasket ShoppingBasket);
}
