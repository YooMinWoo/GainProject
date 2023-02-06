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
	
	// http://localhost:7080/Gain/getCoupon.do
	@RequestMapping("/getCoupon.do")
	public String getCoupon(Coupon sch, Model d) {
		d.addAttribute("couponList", service.getCoupon(sch));
		return "WEB-INF\\dasomView\\MyCoupon.jsp";
	}
}
