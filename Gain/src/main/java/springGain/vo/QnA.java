package springGain.vo;

import java.util.Date;

public class QnA {

	private String id;
	private String category;
	private String title;
	private String content;
	private Date regDate;
	private String state;
	private String reply;
	public QnA() {
		// TODO Auto-generated constructor stub
	}
	public QnA(String id, String category, String title, String content, Date regDate, String state, String reply) {
		this.id = id;
		this.category = category;
		this.title = title;
		this.content = content;
		this.regDate = regDate;
		this.state = state;
		this.reply = reply;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	
	
}
