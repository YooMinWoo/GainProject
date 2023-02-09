package springGain.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	// 이용자 상품 조회
	@RequestMapping("/getProdList.do")
	public String getProdList(@ModelAttribute("sch") Product sch, Model d) {
		if(sch.getCategoryNum() == null) {
			d.addAttribute("all", "전체 상품");
		}
		d.addAttribute("plist", service.getProduct(sch));
		d.addAttribute("brand", service.getBrandName(sch));
		d.addAttribute("category", service.getCategoryName(sch.getCategoryNum()));
		d.addAttribute("detail", service.getDetailName(sch.getCategoryNum()));
		
		return "WEB-INF\\heejunView\\prod_searchPage.jsp";
	}
	
	// http://localhost:7080/Gain/getProdListAdmin.do
	// 관리자 상품 조회
	@RequestMapping("/getProdListAdmin.do")
	public String getProdListAdmin(@ModelAttribute("sch") Product sch, Model d) {
		if(sch.getCategoryNum() == null) {
			d.addAttribute("all", "전체 상품");
		}
		d.addAttribute("plist", service.getProduct(sch));
		d.addAttribute("brand", service.getBrandName(sch));
		d.addAttribute("category", service.getCategoryName(sch.getCategoryNum()));
		d.addAttribute("detail", service.getDetailName(sch.getCategoryNum()));
		
		return "WEB-INF\\heejunView\\prod_searchPage_admin.jsp";
	}	
	
	// 상품 상세페이지
	@GetMapping("/prodDetail.do")
	public String prodDetail(@RequestParam String prodNum, 
							@RequestParam String categoryNum,
							Model d) {
		d.addAttribute("prod", service.productDetail(prodNum));
		d.addAttribute("option", service.getOption(categoryNum));
		
		return "WEB-INF\\heejunView\\prod_detailPage.jsp";
	}
	
	// http://localhost:7080/Gain/insertProd.do
	
	// 상품 등록
	@GetMapping("/insertProd.do")
	public String insertProd() {
		return "WEB-INF\\heejunView\\prod_insertPage.jsp";
	}
	@PostMapping("/insertProd.do")
	public String insertProd(Product ins, RedirectAttributes redirect) {
		if(service.insertProd(ins) != null) {
			redirect.addFlashAttribute("insMsg", "등록 성공");
		}
		
		return "redirect:/getProdListAdmin.do";
	}
	
	// 상품 수정
	@GetMapping("/updateProd.do")
	public String updateProd(@RequestParam String prodNum, Model d) {
		d.addAttribute("prod", service.productDetail(prodNum));
		
		return "WEB-INF\\heejunView\\prod_updatePage.jsp";
	}
	@PostMapping("/updateProd.do")
	public String updateProd(Product udt, RedirectAttributes redirect) {
		if(service.updateProd(udt) != null) {
			redirect.addFlashAttribute("udtMsg", "수정 성공");
		}
		return "redirect:/getProdListAdmin.do";
	}
	
	
	// 상품 삭제
	@RequestMapping("/deleteProd.do")
	public String deleteProd(@RequestParam String prodNum, RedirectAttributes redirect) {
		if(service.deleteProd(prodNum) != null) {
			redirect.addFlashAttribute("delMsg", "삭제 성공");
		}
		
		return "redirect:/getProdListAdmin.do";
	}
}
