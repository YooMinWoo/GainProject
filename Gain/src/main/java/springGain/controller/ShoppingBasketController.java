package springGain.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springGain.service.ShoppingBasketService;
import springGain.vo.GainMember;

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
	
	//메인
	// http://localhost:7080/Gain/goMain.do
	
	// http://localhost:7080/Gain/addCart.do
	@RequestMapping("/addCart.do")
	public String addCart(@RequestParam("prodNum") String prodNum, HttpSession session, Model d) {
		GainMember mem = (GainMember)session.getAttribute("login");
		service.addCart(prodNum, mem.getId());
		return "/shoppingBasket.do";
	}

}
