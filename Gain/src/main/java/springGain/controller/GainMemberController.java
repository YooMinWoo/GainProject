package springGain.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import springGain.service.GainMemberService;
import springGain.vo.GainMember;


@Controller("GainMemberCtrl")
public class GainMemberController {
   
   @Autowired
   private GainMemberService service;
   
   
   // http://localhost:8090/Gain/idCheck.do?id=alsn99
   @RequestMapping("/idCheck.do")
   public String idCheck(GainMember gm, Model d) {
	   d.addAttribute("idC",service.getMemList(gm));
      return "pageJsonReport";
   }
   
   @RequestMapping("/insMember.do")
   public String insMember(GainMember gm, Model d) {
	  service.insMem(gm);
      return "ymw/login.jsp";
   }
}