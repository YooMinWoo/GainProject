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
	public List<Coupon> getCoupon(Coupon sch){
		if(sch.getCouponName()==null) sch.setCouponName("");
		return dao.getCoupon(sch);
	}
	
}