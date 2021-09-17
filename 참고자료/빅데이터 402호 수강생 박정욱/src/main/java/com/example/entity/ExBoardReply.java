package com.example.entity;

import java.util.Date;
import java.util.Optional;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "COVID19BOARD_REPLY")
@SequenceGenerator(name = "SEQ", sequenceName = "SEQ_COVID19BOARD_REPLY", initialValue = 1, allocationSize = 1)
public class ExBoardReply {

	// 답글번호(PK), 내용, 게시물번호(FK), 등록일
	@Column(name = "REPNO")
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ")
	private Long no = 0L;

	@Lob
	@Column(name = "REPCONTENT")
	private String content = null;

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss.SSS")
	@CreationTimestamp
	@Column(name = "REPDATE")
	private Date date;

	@ManyToOne
	@JoinColumn(name = "CITY")
	private ExBoard board = null;

	/**
	 * @return the no
	 */
	public Long getNo() {
		return no;
	}

	/**
	 * @param no the no to set
	 */
	public void setNo(Long no) {
		this.no = no;
	}

	/**
	 * @return the content
	 */
	public String getContent() {
		return content;
	}

	/**
	 * @param content the content to set
	 */
	public void setContent(String content) {
		this.content = content;
	}

	/**
	 * @return the board
	 */
	public ExBoard getBoard() {
		return board;
	}

	/**
	 * @param board the board to set
	 */
	public void setBoard(ExBoard board) {
		this.board = board;
	}

	/**
	 * @return the date
	 */
	public Date getDate() {
		return date;
	}

	/**
	 * @param date the date to set
	 */
	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "ExBoardReply [no=" + no + ", content=" + content + ", board=" + board + ", date=" + date + "]";
	}

	public ExBoardReply() {
		super();
	}

	// get/setter, toString, 생성자 생성
}