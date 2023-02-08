package springGain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springGain.dao.CouponDao;
import springGain.vo.Coupon;

@Service
public class CouponService {
	@Autowired(required = false)
	private CouponDao dao;
	public List<Coupon> getCouponList(Coupon sch){
		if(sch.getCouponName()==null) sch.setCouponName("");
		return dao.getCouponList(sch);
	}
	
	public void addCoupon(Coupon cp) {
		dao.addCoupon(cp);
	}
}
