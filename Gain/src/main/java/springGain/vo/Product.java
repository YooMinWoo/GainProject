package springGain.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Product {
	private String prodNum;
	private String prodName;
	private int prodPrice;
	private String prodImg;
	private String prodInfo;
	private Date prodDate;
	private String brandNum;
	private String categoryNum;
	private String detailNum;
	private MultipartFile multipartfile;
	
	public String getDetailNum() {
		return detailNum;
	}
	public void setDetailNum(String detailNum) {
		this.detailNum = detailNum;
	}
	public String getBrandNum() {
		return brandNum;
	}
	public void setBrandNum(String brandNum) {
		this.brandNum = brandNum;
	}
	public String getCategoryNum() {
		return categoryNum;
	}
	public void setCategoryNum(String categoryNum) {
		this.categoryNum = categoryNum;
	}
	public String getProdNum() {
		return prodNum;
	}
	public void setProdNum(String prodNum) {
		this.prodNum = prodNum;
	}
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public int getProdPrice() {
		return prodPrice;
	}
	public void setProdPrice(int prodPrice) {
		this.prodPrice = prodPrice;
	}
	public String getProdImg() {
		return prodImg;
	}
	public void setProdImg(String prodImg) {
		this.prodImg = prodImg;
	}
	public String getProdInfo() {
		return prodInfo;
	}
	public void setProdInfo(String prodInfo) {
		this.prodInfo = prodInfo;
	}
	public Date getProdDate() {
		return prodDate;
	}
	public void setProdDate(Date prodDate) {
		this.prodDate = prodDate;
	}
	public MultipartFile getMultipartfile() {
		return multipartfile;
	}
	public void setMultipartfile(MultipartFile multipartfile) {
		this.multipartfile = multipartfile;
	}
	

}
