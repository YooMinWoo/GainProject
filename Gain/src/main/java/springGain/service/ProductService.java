package springGain.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import springGain.dao.ProductDao;
import springGain.vo.Brand;
import springGain.vo.Category;
import springGain.vo.DetailInfo;
import springGain.vo.Option;
import springGain.vo.Product;

@Service
public class ProductService {
	@Autowired(required = false)
	private ProductDao dao;
	
	// 업로드할 경로 지정
	@Value("${img.upload}")
	private String upload;
	
	// 상품 검색 service
	public List<Product> getProduct(Product sch){
		if(sch.getProdName()==null) sch.setProdName("");
		
		return dao.getProduct(sch);
	}
	
	// 상품 상세조회
	public Product productDetail(String prodNum) {
		
		
		return dao.productDetail(prodNum);
	}
	

	// 상품 등록시 이미지 파일 업로드
	public String uploadFile(MultipartFile multipartfile) {
		String fname = multipartfile.getOriginalFilename();
		if(fname != null && !fname.equals("")) {
			File fObj = new File(upload+fname);
			
			try {
				multipartfile.transferTo(fObj);
				
			} catch (IllegalStateException e) {
				System.out.println("파일업로드 예외1:"+e.getMessage());
				
			} catch (IOException e) {
				System.out.println("파일업로드 예외2:"+e.getMessage());
			} 
		}
		return fname;
	}
	// 상품 등록
	public String insertProd(Product ins) {
		String prodImg = uploadFile(ins.getMultipartfile());
		
		ins.setProdImg(prodImg);
		
		dao.insertProd(ins);
		
		return prodImg;
	}
	
	//  상품 수정
	public String updateProd(Product udt) {
		if( uploadFile(udt.getMultipartfile())!=null && !uploadFile(udt.getMultipartfile()).equals("")) {
			String prodImg = uploadFile(udt.getMultipartfile());
			
			udt.setProdImg(prodImg);
		}

		if(udt.getProdImg()==null) udt.setProdImg("");
		if(udt.getProdInfo()==null) udt.setProdInfo("");
		
		dao.updateProd(udt);
		
		return udt.getProdNum();
	}
	
	// 상품 삭제
	public String deleteProd(String prodNum) {
		dao.deleteProd(prodNum);
		
		return prodNum;
	}
	
	// 카테고리 이름 출력
	public Category getCategoryName(String categoryNum) {
		
		return dao.getCategoryName(categoryNum);
	}
	
	// 세부항목 이름 출력
	public List<DetailInfo> getDetailName(String categoryNum) {
		
		return dao.getDetailName(categoryNum);
	}
	
	// 옵션
	public List<Option> getOption(String categoryNum){
		
		return dao.getOption(categoryNum);
	}
	
	// 브랜드 이름
	public List<String> getBrandName(Product sch) {
		if(sch.getBrandNum() == null) sch.setBrandNum("");
		if(sch.getCategoryNum() == null) sch.setCategoryNum("");
		if(sch.getDetailNum() == null) sch.setDetailNum("");
		
		return dao.getBrandName(sch);
	}
	
	// 브랜드 combo
	public List<Brand> getBrand(){
		
		return dao.getBrand();
	}
	
	// 카테고리 combo
	public List<Category> getCategory(){
		
		return dao.getCategory();
	}
	
	// 세부항목 combo
	public List<DetailInfo> getDetailInfo(){
		
		return dao.getDetailInfo();
	}
}
