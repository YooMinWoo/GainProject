package springGain.vo;

import java.util.Date;

public class GainMember {
	private String id;
	private String nickname;
	private String pass;
	private String name;
	private String phoneNum;
	private Date birth;
	private String sex;
	private int permisSms;
	private int permisAppPush;
	private int permisMail;
	private int permisPhone;
	private int useInfo;
	private int point;
	private String address;
	private String address_detail;
	private String auth;
	public GainMember() {
		// TODO Auto-generated constructor stub
	}
	public GainMember(String id, String nickname, String pass, String name, String phoneNum, Date birth, String sex,
			int permisSms, int permisAppPush, int permisMail, int permisPhone, int useInfo, int point, String address,
			String address_detail, String auth) {
		this.id = id;
		this.nickname = nickname;
		this.pass = pass;
		this.name = name;
		this.phoneNum = phoneNum;
		this.birth = birth;
		this.sex = sex;
		this.permisSms = permisSms;
		this.permisAppPush = permisAppPush;
		this.permisMail = permisMail;
		this.permisPhone = permisPhone;
		this.useInfo = useInfo;
		this.point = point;
		this.address = address;
		this.address_detail = address_detail;
		this.auth = auth;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getPermisSms() {
		return permisSms;
	}
	public void setPermisSms(int permisSms) {
		this.permisSms = permisSms;
	}
	public int getPermisAppPush() {
		return permisAppPush;
	}
	public void setPermisAppPush(int permisAppPush) {
		this.permisAppPush = permisAppPush;
	}
	public int getPermisMail() {
		return permisMail;
	}
	public void setPermisMail(int permisMail) {
		this.permisMail = permisMail;
	}
	public int getPermisPhone() {
		return permisPhone;
	}
	public void setPermisPhone(int permisPhone) {
		this.permisPhone = permisPhone;
	}
	public int getUseInfo() {
		return useInfo;
	}
	public void setUseInfo(int useInfo) {
		this.useInfo = useInfo;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddress_detail() {
		return address_detail;
	}
	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	
	
}
