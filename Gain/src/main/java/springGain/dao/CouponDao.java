package springGain.dao;

import java.util.List;

import springGain.vo.Coupon;

public interface CouponDao {
	
	// 어드민 쿠폰 조회
	public List<Coupon> getCouponList(Coupon sch);
	
	// 고객 마이 쿠폰 조회
	
	
	// 쿠폰 등록
	public void addCoupon(Coupon cp);
	
	// 쿠폰 삭제

}
