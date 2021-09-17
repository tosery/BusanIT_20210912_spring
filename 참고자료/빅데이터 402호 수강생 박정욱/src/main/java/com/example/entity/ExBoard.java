package com.example.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "COVID19BOARD")
public class ExBoard {

	@Column(name = "CITY")
	@Id
	private String city = null;

	@Column(name = "TITLE")
	private String title = null;

//	@Lob
	@Column(name = "CONTENT")
	private String content = null;

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss.SSS")
//	@CreationTimestamp
	@UpdateTimestamp
	@Column(name = "REGDATE")
	private Date date;

	@OneToMany(mappedBy = "board")
	private List<ExBoardReply> replyList = new ArrayList<>();

	@Lob
	@Column(name = "IMG")
	public byte[] img;

	@Transient // 컬럼생성하지 않음
	private String base64;

	public ExBoard() {
		super();
	}

	public byte[] getImg() {
		return img;
	}

	public void setImg(byte[] img) {
		this.img = img;
	}

	public String getBase64() {
		return base64;
	}

	public void setBase64(String base64) {
		this.base64 = base64;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
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

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public List<ExBoardReply> getReplyList() {
		return replyList;
	}

	public void setReplyList(List<ExBoardReply> replyList) {
		this.replyList = replyList;
	}

	@Override
	public String toString() {
		return "ExBoard [city=" + city + ", title=" + title + ", content=" + content + ", date=" + date + ", replyList="
				+ replyList + "]";
	}

	// get/setter, tostring, 생성자

}