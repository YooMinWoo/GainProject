package springGain.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import springGain.service.GainMemberService;
import springGain.vo.GainMember;


@Controller
public class GainMemberController {
   
   @Autowired
   private GainMemberService service;
   
// http://localhost:2020/Gain/goMain.do
   @RequestMapping("/goMain.do")
   public String goMain() {
	   return "markup/main_index.jsp";
   }
// http://localhost:2020/Gain/goAdminMain.do
   @RequestMapping("/goAdminMain.do")
   public String goAdminMain() {
	   return "markup/admin_main.jsp";
   }
   
   // http://localhost:2020/Gain/goNewMember.do
   @RequestMapping("/goNewMember.do")
   public String goNewMember() {
	   return "ymw/NewMember.jsp";
   }
   
   // http://localhost:2020/Gain/idCheck.do?id=alsn99
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
   // http://localhost:2020/Gain/login.do
   @RequestMapping("/login.do")
   public String login(GainMember gm, Model d, HttpSession session) {
	  if(gm.getId()==null) {
		  d.addAttribute("logCh", "");
		  return "ymw/login.jsp";
	  }
	  else if(service.login(gm)==null) {
		  d.addAttribute("logCh", "X");
		  return "ymw/login.jsp";
	  }
	  else{
		  session.setAttribute("login", service.login(gm));
		  if(service.login(gm).getAuth().equals("1")) {
			  return "redirect:/goAdminMain.do";
		  }else {
			  return "redirect:/goMain.do";
		  }
		  
	  }
   }
}