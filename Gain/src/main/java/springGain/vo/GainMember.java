package springGain.vo;

import java.util.Date;

public class GainMember {
	private String id;
	private String nickname;
	private String pass;
	private String name;
	private String phonenum;
	private String birth;
	private String sex;
	private int permissms;
	private int permisemail;
	private int permisapppush;
	private int permismail;
	private int permisphone;
	private String useinfo;
	private int point;
	private String address;
	private String address_detail;
	private String auth;
	public GainMember() {
		// TODO Auto-generated constructor stub
	}
	public GainMember(String id, String nickname, String pass, String name, String phonenum, String birth, String sex,
			int permissms, int permisemail, int permisapppush, int permismail, int permisphone, String useinfo,
			int point, String address, String address_detail, String auth) {
		this.id = id;
		this.nickname = nickname;
		this.pass = pass;
		this.name = name;
		this.phonenum = phonenum;
		this.birth = birth;
		this.sex = sex;
		this.permissms = permissms;
		this.permisemail = permisemail;
		this.permisapppush = permisapppush;
		this.permismail = permismail;
		this.permisphone = permisphone;
		this.useinfo = useinfo;
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
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getPermissms() {
		return permissms;
	}
	public void setPermissms(int permissms) {
		this.permissms = permissms;
	}
	public int getPermisemail() {
		return permisemail;
	}
	public void setPermisemail(int permisemail) {
		this.permisemail = permisemail;
	}
	public int getPermisapppush() {
		return permisapppush;
	}
	public void setPermisapppush(int permisapppush) {
		this.permisapppush = permisapppush;
	}
	public int getPermismail() {
		return permismail;
	}
	public void setPermismail(int permismail) {
		this.permismail = permismail;
	}
	public int getPermisphone() {
		return permisphone;
	}
	public void setPermisphone(int permisphone) {
		this.permisphone = permisphone;
	}
	public String getUseinfo() {
		return useinfo;
	}
	public void setUseinfo(String useinfo) {
		this.useinfo = useinfo;
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