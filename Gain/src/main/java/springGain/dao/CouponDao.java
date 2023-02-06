package springGain.dao;

import java.util.List;

import springGain.vo.Coupon;

public interface CouponDao {
	public List<Coupon> getCouponList(Coupon sch);
}
