package springGain.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import springGain.service.CouponService;
import springGain.vo.Coupon;

@Controller
public class CouponController {
	@Autowired(required = false)
	private CouponService service;
	
	@RequestMapping("/getCoupon.do")
	public String getCoupon(Coupon sch, Model d) {
		return "";
	}
}
