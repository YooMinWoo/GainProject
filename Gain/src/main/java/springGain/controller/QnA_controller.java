package springGain.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import springGain.service.QnA_Service;
import springGain.vo.QnA;

@Controller
public class QnA_controller {
	
	@Autowired
	private QnA_Service service;
	// http://localhost:7080/Gain/qna.do
	@RequestMapping("/qna.do")
	public String memQnAList(@ModelAttribute("sch") QnA sch,Model d) {
		d.addAttribute("qnaList", service.memQnAList(sch));
		return "WEB-INF\\suminView\\Q&A_mem02.jsp";
	}
	@GetMapping("/insertFrm.do")
	public String insertFrm() {
		return "WEB-INF\\\\suminView\\\\Q&A_mem01.jsp";
	}
	
	@PostMapping("/insert.do")
	public String insertQnA(QnA ins,Model d) {
		service.insertQnA(ins);
		d.addAttribute("msg","Q&A 등록 완료");
		return "WEB-INF\\suminView\\Q&A_mem01.jsp";
	}
	// http://localhost:7080/Gain/qnaList.do
	@RequestMapping("/qnaList.do")
	public String getQnAList(@ModelAttribute("sch") QnA sch,Model d) {
		d.addAttribute("qnaList", service.getQnAList(sch));
		return "WEB-INF\\suminView\\Q&A_admin01.jsp";
	}
	
	@PostMapping("/update.do")
	public String uptReply(QnA upt, Model d) {
		service.uptReply(upt);
		d.addAttribute("msg", "답변 등록 완료");
		return "WEB-INF\\\\suminView\\\\Q&A_admin01.jsp";
	}
	
}
