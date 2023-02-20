package com.User;

import java.util.Date;

public class Post {
	private int id;
	private String titile;
	private String content;
	private Date pdate;
	private UserDetails user;
	public Post(int id, String titile, String content, Date pdate, UserDetails user) {
		super();
		this.id = id;
		this.titile = titile;
		this.content = content;
		this.pdate = pdate;
		this.user = user;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitile() {
		return titile;
	}
	public void setTitile(String titile) {
		this.titile = titile;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	public UserDetails getUser() {
		return user;
	}
	public void setUser(UserDetails user) {
		this.user = user;
	}
	
}
