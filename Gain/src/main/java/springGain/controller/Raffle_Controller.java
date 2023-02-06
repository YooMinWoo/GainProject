package springGain.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import springGain.service.Raffle_Service;

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
}
