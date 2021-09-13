package com.example.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.entity.ExBoard;
import com.example.entity.ExBoardReply;
import com.example.repository.ExBoardRepository;
import com.example.repository.ExBoardReplyRepository;

@Controller
@RequestMapping(value = "/board")
public class ExBoardReplyController {

	@Autowired
	ExBoardReplyRepository brRepository;

	@Autowired
	ExBoardRepository bRepository;

	@RequestMapping(value = "/reply")
	public String replyGET(Model model, @RequestParam(value = "city") String city) {
		ExBoard obj = bRepository.getOne(city);
		model.addAttribute("vo", obj);
		return "board_reply";
	}

	@RequestMapping(value = "/reply", method = RequestMethod.POST)
	public String replyPOST(@RequestParam(value = "city") String city, @ModelAttribute ExBoardReply vo)
			throws UnsupportedEncodingException {
		ExBoard obj = bRepository.getOne(city);
		vo.setBoard(obj);

		brRepository.save(vo);
		return "redirect:/board/content?city=" + URLEncoder.encode(city, "utf-8");

	}

}
