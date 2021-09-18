package com.team.service;

import org.springframework.stereotype.Service;

import com.team.mapper.ProductMapper;

@Service
public class ProductService {
	private ProductMapper productMapper;
	
	public ProductService(ProductMapper productMapper) {
		this.productMapper = productMapper;
	}
	
}
