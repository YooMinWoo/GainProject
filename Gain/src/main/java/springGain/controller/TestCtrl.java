package springGain.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import springGain.service.MemberService;


@Controller("testCtrl")
public class TestCtrl {
   
   @Autowired
   private MemberService service;
   
   // http://localhost:7090/Gain/test1.do
   @RequestMapping("/test1.do")
   public String empList() {
      return "/test.jsp";
   }
   
   @RequestMapping("/test2.do")
   public String empList2(Model d) {
	   d.addAttribute("memList",service.getMemList());
      return "/test.jsp";
   }
   /*
   <c:forEach var="mem" items="${ memList}">
		<tr><td>${mem.id }</td><td>${mem.pass }</td></tr>
	</c:forEach>
    * */
}