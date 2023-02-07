package springGain.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;



import springGain.service.Raffle_Service;
import springGain.vo.Raffle;

@Controller
public class Raffle_Controller {

	@Autowired
	private Raffle_Service service;
	
	// http://localhost:7080/Gain/raffle.do
	@RequestMapping("/raffle.do")
	public String getRafList(Model d) {
		d.addAttribute("rafList", service.getRafList());
		return "WEB-INF\\suminView\\RaffleList.jsp";
	}
	// http://localhost:7080/Gain/rafUploadFrm.do
	@GetMapping("/rafUploadFrm.do")
	public String regFrm() {
		return "WEB-INF\\suminView\\Raffle_admin01.jsp";
	}
	@RequestMapping("/rafUpload.do")
	public String rafUpload(Raffle upload, Model d ) {
		if(service.regRaffle(upload)!="") {
			d.addAttribute("msg", "업로드 성공");
		}
		
		return "WEB-INF\\\\suminView\\\\Raffle_admin01.jsp"; // 업로드 후에 바로 전체 리스트 검색되게 처리
	}
	
	@RequestMapping("/insRaffle.do")
	public String insertRaffle(Raffle ins,Model d) {
		service.insertRaffle(ins);
		d.addAttribute("msg", "응모완료");
		return "WEB-INF\\suminView\\RaffleList.jsp";
	}
	
	@GetMapping("/myRaffle.do")
	public String myRaffle(Raffle sch,Model d) {
	
		d.addAttribute("myRafList",	service.myRaffle(sch) );
		return "WEB-INF\\suminView\\MyRaffleList.jsp";
	}
	
	
	/*
	@PostMapping("/regRaffle.do")
	public String regRaffle(Raffle ins, Model d) {
		service.regRaffle(ins);
		d.addAttribute("msg", "래플등록완료");
		return "WEB-INF\\suminView\\Raffle_admin01.jsp";
	}
	*/
}
