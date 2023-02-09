package springGain.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springGain.service.BuyService;
import springGain.vo.GainMember;

@Controller("bctrl")
public class BuyController {
	
  
	@Autowired(required = false)
	private BuyService service;
	

	
//	http://localhost:7030/Gain/getbuyList.do	
	//배송지 정보
	
	//@RequestParam("id") String id,Model d
	@GetMapping("/getbuyList.do")
	public String getbuyList(Model d, HttpSession session,@RequestParam String prodNum) {
		GainMember mem=(GainMember)session.getAttribute("login");
        
        SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년 MM월 dd일");
        Date now = new Date();
        String nowTime2 = sdf2.format(now);
        System.out.println(nowTime2);
        
        //바로 출력도 가능
        //System.out.println(sdf1.format(now));
        //System.out.println(sdf2.format(now));
		
		 d.addAttribute("m01", service.getGainMemberList(mem.getId()));
		
		 d.addAttribute("p01",service.getProductList(prodNum));
		 d.addAttribute("time01", nowTime2);
		 
		return "WEB-INF\\dongeunView\\buy01.jsp";
	}
	
	
	

	
}
