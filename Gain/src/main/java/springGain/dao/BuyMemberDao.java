package springGain.dao;

import springGain.vo.GainMember;
import springGain.vo.Product;
//springGain.dao.BuyMemberDao
public interface BuyMemberDao {
	//배송지 정보
	public GainMember getGainMemberList(String id);  
	// 상품 정보
	public Product getProductList(String prodnum);    
	
}
