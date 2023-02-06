package springGain.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import springGain.service.QnA_Service;
import springGain.vo.QnA;

@Controller
public class QnA_controller {
	
	@Autowired
	private QnA_Service service;
	// http://localhost:7080/Gain/qna.do
	@RequestMapping("/qna.do")
	public String getQnAList(@ModelAttribute("sch") QnA sch,Model d) {
		d.addAttribute("qnaList", service.getQnAList(sch));
		return "WEB-INF\\suminView\\Q&A_mem02.jsp";
	}
}
