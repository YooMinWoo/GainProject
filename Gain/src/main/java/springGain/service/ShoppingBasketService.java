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
	
	public void addCart(String prodNum, String id) {
		ShoppingBasket sb = new ShoppingBasket(prodNum,id);
		System.out.println("아이디 : "+sb.getId()+"\n상품번호 : "+sb.getProdNum());
		dao.addCart(sb);
	}
}
