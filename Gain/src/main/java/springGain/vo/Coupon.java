package springGain.vo;


public class Coupon {
	private String couponNum; 
	private String couponName;
	private int couponPercent;
	private String couponEndDate;
	public String getCouponNum() {
		return couponNum;
	}
	public void setCouponNum(String couponNum) {
		this.couponNum = couponNum;
	}
	public String getCouponName() {
		return couponName;
	}
	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}
	public int getCouponPercent() {
		return couponPercent;
	}
	public void setCouponPercent(int couponPercent) {
		this.couponPercent = couponPercent;
	}
	public String getCouponEndDate() {
		return couponEndDate;
	}
	public void setCouponEndDate(String couponEndDate) {
		this.couponEndDate = couponEndDate;
	}
	public Coupon(String couponNum, String couponName, int couponPercent, String couponEndDate) {
		super();
		this.couponNum = couponNum;
		this.couponName = couponName;
		this.couponPercent = couponPercent;
		this.couponEndDate = couponEndDate;
	}
	
	
}
