package springGain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springGain.dao.CouponDao;
import springGain.dao.ShoppingBasketDao;
import springGain.vo.Coupon;
import springGain.vo.Product;
import springGain.vo.ShoppingBasket;

@Service
public class ShoppingBasketService {
	@Autowired(required = false)
	private ShoppingBasketDao dao;
	
	public List<Product> getSBList(String id){
		return dao.getSBList(id);
	}
	
	public void addCart(ShoppingBasket sb) {
		dao.addCart(sb);
	}
}
