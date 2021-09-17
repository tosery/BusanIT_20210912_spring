package com.example.security;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class MyUser extends User {

	// 추가할 변수명
	private String username = null;
	private String password = null;
	private String city = null;

	public MyUser(String username, String password, Collection<? extends GrantedAuthority> authorities, String city) {
		super(username, password, authorities);
		this.city = city;
		this.username = username;
		this.password = password;
	}

	// getter /setter만들기

	public String getUsername() {
		return username;
	}

	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}

	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}