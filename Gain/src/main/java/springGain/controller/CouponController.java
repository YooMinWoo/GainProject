package springGain.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import springGain.service.CouponService;
import springGain.vo.Coupon;
import springGain.vo.Product;

@Controller
public class CouponController {
	@Autowired(required = false)
	private CouponService service;
	
	// http://localhost:7080/Gain/couponAdmin.do
	@RequestMapping("/couponAdmin.do")
	public String getCouponList(@ModelAttribute("sch") Coupon sch, Model d) {
		d.addAttribute("couponList", service.getCouponList(sch));
		return "WEB-INF\\dasomView\\couponListAdmin.jsp";
	}
	
	//메인
	// http://localhost:7080/Gain/goMain.do
	
	
	// http://localhost:7080/Gain/addCoupon.do
	@RequestMapping("/addCoupon.do")
	public String addCoupon(Coupon cp, Model d) {
		service.addCoupon(cp);
		return "WEB-INF\\dasomView\\addCoupon.jsp";
	}

	
}
