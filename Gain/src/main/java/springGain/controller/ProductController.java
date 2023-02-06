package springGain.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springGain.service.ProductService;
import springGain.vo.Brand;
import springGain.vo.Category;
import springGain.vo.DetailInfo;
import springGain.vo.Product;

@Controller
public class ProductController {
	@Autowired(required = false)
	private ProductService service;
	
	@ModelAttribute("brandCom")
	public List<Brand> getBrand() {
		return service.getBrand();
	}
	
	@ModelAttribute("categoryCom")
	public List<Category> getCategory() {
		return service.getCategory();
	}
	
	@ModelAttribute("detailCom")
	public List<DetailInfo> getDetailInfo() {
		return service.getDetailInfo();
	}
	
	
	// http://localhost:7080/Gain/getProdList.do
	@RequestMapping("/getProdList.do")
	public String getProdList(@ModelAttribute("sch") Product sch, Model d, 
								@RequestParam(defaultValue="") String categoryNum
								) {
		d.addAttribute("plist", service.getProduct(sch));
		d.addAttribute("category", service.getCategoryName(categoryNum));
		d.addAttribute("detail", service.getDetailName(categoryNum));
		
		return "WEB-INF\\heejunView\\prod_searchPage.jsp";
	}
	
	// 상품 상세페이지
	@GetMapping("/prodDetail.do")
	public String prodDetail(@RequestParam String prodNum, Model d) {
		d.addAttribute("prod", service.productDetail(prodNum));
		
		return "WEB-INF\\heejunView\\prod_detailPage.jsp";
	}
	
	// http://localhost:7080/Gain/insertProd.do
	@RequestMapping("/insertProd.do")
	public String insertProd(Product ins, Model d) {
		// service.insertProd(ins);
		
		return "WEB-INF\\heejunView\\prod_insertPage.jsp";
	}
}
