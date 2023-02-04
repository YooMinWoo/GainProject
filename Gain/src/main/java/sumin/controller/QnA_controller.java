package sumin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import sumin.service.QnA_Service;

@Controller
public class QnA_controller {
	
	@Autowired
	private QnA_Service service;
	// http://localhost:7080/Gain/qna.do
	@RequestMapping("/qna.do")
	public String getQnAList(@RequestParam("id") String id,Model d) {
		d.addAttribute("qnaList", service.getQnAList(id));
		return "WEB-INF\\suminView\\Q&A_mem02.jsp";
	}
}
