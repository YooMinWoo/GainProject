package springGain.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import springGain.service.ProductService;
import springGain.vo.Product;

@Controller
public class ProductController {
	@Autowired(required = false)
	private ProductService service;
	
	// http://localhost:7080/Gain/insertProd.do
	@RequestMapping("/insertProd.do")
	public String insertProd(Product ins, Model d) {
		
		return "WEB-INF\\heejunView\\prod_insertPage.jsp";
	}
}
