package springGain.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springGain.dao.BuyMemberDao;
import springGain.vo.GainMember;
import springGain.vo.Product;

@Service
public class BuyService {

	@Autowired(required = false)
	private BuyMemberDao dao;
	
	//배송지 정보
	public GainMember getGainMemberList(String id) {
		
		return dao.getGainMemberList(id);
	}
	
	//상품 정보
	public Product getProductList(String prodnum) {
		
		return dao.getProductList(prodnum);
	}
	
}
