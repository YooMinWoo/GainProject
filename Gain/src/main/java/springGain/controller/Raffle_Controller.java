package springGain.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import springGain.service.Raffle_Service;
import springGain.vo.GainMember;
import springGain.vo.RafState;
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
	
	@RequestMapping("/insRaffle.do")
	public String insertRaffle(RafState ins,Model d,HttpSession session) {
		GainMember mem = (GainMember)session.getAttribute("login");
		ins.setId(mem.getId());
		service.insertRaffle(ins);
		d.addAttribute("msg", "응모완료");
		return "WEB-INF\\suminView\\RaffleList.jsp";
	}
	
	@GetMapping("/myRaffle.do")
	public String myRaffle(Model d,HttpSession session) {
		GainMember mem = (GainMember)session.getAttribute("login");
		d.addAttribute("myRafList",	service.myRaffle(mem.getId()) );
		return "WEB-INF\\suminView\\MyRaffleList.jsp";
	}
	
	// http://localhost:7080/Gain/rafUploadFrm.do
	
	@GetMapping("/rafUploadFrm.do")
	public String regFrm() {
		return "WEB-INF\\suminView\\Raffle_admin01.jsp";
	}
	@RequestMapping("/rafUpload.do")
	public String rafUpload(Raffle upload, Model d ) {
		if(service.regRaffle(upload)!=null) {
			d.addAttribute("msg", "업로드 성공");
		}
		return "WEB-INF\\suminView\\Raffle_admin01.jsp"; 
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
