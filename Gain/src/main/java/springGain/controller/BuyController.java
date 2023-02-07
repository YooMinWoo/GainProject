package springGain.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import springGain.service.BuyService;

@Controller("bctrl")
public class BuyController {
	@Autowired(required = false)
	private BuyService service;
	
//	http://localhost:7080/Gain/getbuyList.do	
	@GetMapping("/getbuyList.do")
	public String getbuyList(@ModelAttribute("id") String id,Model d) {
		 d.addAttribute("mlist", service.getGainMemberList(id));
		
		return "WEB-INF\\dongeunView\\buy01.jsp";
	}
	
	
}
