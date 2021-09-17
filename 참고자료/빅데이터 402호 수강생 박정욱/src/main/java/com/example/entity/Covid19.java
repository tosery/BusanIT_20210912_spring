package com.example.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "COVID19")
public class Covid19 {
	@Column(name = "SEQ")
	@Id
	private Long seq = 0L;

	// 확진자 수
	@Column(name = "DECIDE_CNT")
	private Long cnt = 0L;

	// 격리해제 수
	@Column(name = "CLEAR_CNT")
	private Long cle = 0L;

	// 검사진행중 수
	@Column(name = "EXAM_CNT")
	private Long exa = 0L;

	// 치료중 수
	@Column(name = "CARE_CNT")
	private Long car = 0L;

	// 사망자 수
	@Column(name = "DEATH_CNT")
	private Long dea = 0L;

	// 등록일
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "CREATE_DT")
	private Date date;

	/**
	 * @return the cle
	 */
	public Long getCle() {
		return cle;
	}

	/**
	 * @param cle the cle to set
	 */
	public void setCle(Long cle) {
		this.cle = cle;
	}

	/**
	 * @return the exa
	 */
	public Long getExa() {
		return exa;
	}

	/**
	 * @param exa the exa to set
	 */
	public void setExa(Long exa) {
		this.exa = exa;
	}

	/**
	 * @return the car
	 */
	public Long getCar() {
		return car;
	}

	/**
	 * @param car the car to set
	 */
	public void setCar(Long car) {
		this.car = car;
	}

	/**
	 * @return the dea
	 */
	public Long getDea() {
		return dea;
	}

	/**
	 * @param dea the dea to set
	 */
	public void setDea(Long dea) {
		this.dea = dea;
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

	/**
	 * @return the seq
	 */
	public Long getSeq() {
		return seq;
	}

	/**
	 * @param seq the seq to set
	 */
	public void setSeq(Long seq) {
		this.seq = seq;
	}

	/**
	 * @return the cnt
	 */
	public Long getCnt() {
		return cnt;
	}

	/**
	 * @param cnt the cnt to set
	 */
	public void setCnt(Long cnt) {
		this.cnt = cnt;
	}

	@Override
	public String toString() {
		return "Covid19 [seq=" + seq + ", cnt=" + cnt + ", cle=" + cle + ", exa=" + exa + ", car=" + car + ", dea="
				+ dea + ", date=" + date + "]";
	}

	public Covid19() {
		super();
	}

}
