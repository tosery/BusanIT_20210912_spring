package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.entity.Covid19;
import com.example.entity.ExBoard;
import com.example.repository.Covid19Repository;

@Controller
public class HomeController {
	
	@Autowired
	Covid19Repository cRepository;
	
	// 127.0.0.1:9090/ROOT/home
	// 127.0.0.1:9090/ROOT/main
	// 127.0.0.1:9090/ROOT/
	@RequestMapping(value = { "/home", "/main", "/" })
	public String homeGET() {
		return "home";
	}
	
	@RequestMapping(value = { "/n" })
	public String newfileGET() {
		return "NewFile";
	}
	
	@RequestMapping(value = { "/n1" })
	public String newfile1GET() {
		return "NewFile1";
	}
	
	@RequestMapping(value = { "/n2" })
	public String newfile2GET() {
		return "NewFile2";
	}
	
	@RequestMapping(value = { "/n3" })
	public String newfile3GET() {
		return "NewFile3";
	}
	
	@RequestMapping(value = { "/n4" })
	public String newfile4GET(Model model) {
		List<Covid19> list = cRepository.findAll();
		
		//10,20,30,40...
		String label = "['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday']";
		//String data = "[10,20,30,40,50,60,90]";
		//for(Covid19 vo : list) {
		//data += vo.getCnt()
		//}
		
		String data = String.format("[%s,%s,%s,%s,%s,%s,%s]", 
				list.get(0).getCnt(),
				list.get(1).getCnt(),
				list.get(2).getCnt(),
				list.get(3).getCnt(),
				list.get(4).getCnt(),
				list.get(5).getCnt(),
				list.get(6).getCnt());
		
		model.addAttribute("data", data);
		model.addAttribute("label", label);
		model.addAttribute("list", list);
		return "NewFile4";
	}
	
	@RequestMapping(value = { "/n5" })
	public String newfile5GET(Model model) {
		List<Covid19> list = cRepository.findAll();
		model.addAttribute("list", list);
		return "NewFile5";
	}
}