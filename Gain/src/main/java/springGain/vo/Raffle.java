package springGain.vo;

import java.util.Date;

public class Raffle {
	
	private String rafId;
	private String pname;
	private int price;
	private String imgSrc;
	private Date startDate;
	private Date endDate;
	private Date choDate;
	private String result;
	private String id;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Raffle() {
		// TODO Auto-generated constructor stub
	}
	public Raffle(String rafId, String pname, int price, String imgSrc, Date startDate, Date endDate, Date choDate,
			String result) {
		this.rafId = rafId;
		this.pname = pname;
		this.price = price;
		this.imgSrc = imgSrc;
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
	
	
}
