package springGain.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Raffle {
	
	private String rafId;
	private String pname;
	private int price;
	private String imgSrc;
	private MultipartFile file;
	private Date startDate;
	private Date endDate;
	private Date choDate;
	private String result;
	private String id;
	public Raffle() {
		// TODO Auto-generated constructor stub
	}
	public Raffle(String rafId, String pname, int price, String imgSrc, MultipartFile file, Date startDate,
			Date endDate, Date choDate, String result, String id) {
		this.rafId = rafId;
		this.pname = pname;
		this.price = price;
		this.imgSrc = imgSrc;
		this.file = file;
		this.startDate = startDate;
		this.endDate = endDate;
		this.choDate = choDate;
		this.result = result;
		this.id = id;
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
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public Date getChoDate() {
		return choDate;
	}
	public void setChoDate(Date choDate) {
		this.choDate = choDate;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
}
