package springGain.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import springGain.vo.Product;

@Controller
public class buyController {

//	http://localhost:7080/Gain/getbuyList.do
	
	@RequestMapping("/getbuyList.do")
	public String getbuyList() {
		// d.addAttribute("plist", service.getProduct(sch));
		
		return "WEB-INF\\dongeunView\\buy01.jsp";
	}
	
	
}
