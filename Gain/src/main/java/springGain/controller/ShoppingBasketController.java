package springGain.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import springGain.service.CouponService;
import springGain.service.ShoppingBasketService;
import springGain.vo.Coupon;
import springGain.vo.GainMember;
import springGain.vo.Product;
import springGain.vo.ShoppingBasket;

@Controller
public class ShoppingBasketController {
	@Autowired(required = false)
	private ShoppingBasketService service;
	
	// http://localhost:7080/Gain/shoppingBasket.do
	@RequestMapping("/shoppingBasket.do")
	public String getSBList(Model d, HttpSession session) {
		GainMember mem = (GainMember)session.getAttribute("login");
		d.addAttribute("sbList", service.getSBList(mem.getId()));
		return "WEB-INF\\dasomView\\ShoppingBasket.jsp";
	}
	
	@RequestMapping("/addCart.do")
	public String addCart(ShoppingBasket sb, Model d) {
		service.addCart(sb);
		d.addAttribute("msg","장바구니 추가 완료");
		return "WEB-INF\\heejunView\\prod_detailPage.jsp";
	}
	
}
