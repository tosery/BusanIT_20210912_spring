package com.team.myapp;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/*")
public class TestController{

	@GetMapping("/xml")
	public String xml_test() {
		
		System.out.println("xml»£√‚µ ...");
		return "xml.html";
	}
	

}



