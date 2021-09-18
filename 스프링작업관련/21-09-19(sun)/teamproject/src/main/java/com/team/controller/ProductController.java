package com.team.controller;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team.domain.MemberVO;
import com.team.service.ProductService;
import com.team.util.Script;

@Controller
@RequestMapping("/products/*")
public class ProductController {
	private ProductService productService;
	
	public ProductController(ProductService productService) {
		this.productService = productService;
	}
	
	@GetMapping("/productsList")
	public String products() {
		System.out.println("products 호출됨...");
		return "products/productsList";
	}
	
	@PostMapping("/products")
	public ResponseEntity<String> products(MemberVO memberVO){
		
		String str = Script.href("물품등록!", "/products/productsList");
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=UTF-8");
		return new ResponseEntity<String>(str, headers, HttpStatus.OK);
	}
}
