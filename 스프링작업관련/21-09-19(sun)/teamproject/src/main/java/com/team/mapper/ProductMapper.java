package com.team.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.team.domain.MemberVO;

public interface ProductMapper {

	@Insert("INSERT INTO products (pid, productName, title, status, sell_price, description, seller_id) "
			+ " VALUES (#{pid}, #{productName}, #{title}, #{status}, #{sell_price}, #{description}, #{seller_id}) ")
	String insert(MemberVO memberVO);
	
}







