package springGain.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Raffle {
	
	private String rafId;
	private String pname;
	private int price;
	private String imgSrc;
	private MultipartFile file;
	private String startDate;
	private String endDate;
	private String choDate;
	private String result;
	public Raffle() {
		// TODO Auto-generated constructor stub
	}
	public Raffle(String rafId, String pname, int price, String imgSrc, MultipartFile file, String startDate,
			String endDate, String choDate, String result) {
		this.rafId = rafId;
		this.pname = pname;
		this.price = price;
		this.imgSrc = imgSrc;
		this.file = file;
		this.startDate = startDate;
		this.endDate = endDate;
		this.choDate = choDate;
		this.result = result;
	}
	public String getRafId() {
		return rafId;
	}
	public void setRafId(String rafId) {
		this.rafId = rafId;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImgSrc() {
		return imgSrc;
	}
	public void setImgSrc(String imgSrc) {
		this.imgSrc = imgSrc;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getChoDate() {
		return choDate;
	}
	public void setChoDate(String choDate) {
		this.choDate = choDate;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
	
	
	
}
