package com.example.controller;

import java.io.IOException;
import java.util.Base64;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.entity.ExBoard;
import com.example.entity.ExBoardReply;
import com.example.repository.ExBoardRepository;

@Controller
@RequestMapping(value = "/board")
public class ExBoardController {

	@Autowired
	ExBoardRepository bRepository;

	@RequestMapping(value = "/insert")
	public String insertGET() {
		return "board_insert";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertPOST(@ModelAttribute ExBoard vo, @RequestParam("img1") MultipartFile file) throws IOException {
		if (file.getBytes().length > 0) { // 파일이 첨부되었다면
			vo.setImg(file.getBytes());
		}
		bRepository.save(vo);
		return "redirect:/board/select";
	}

	@RequestMapping(value = "/select")
	public String selectGET(Model model, @RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "txt", defaultValue = "", required = false) String txt) {
		// 페이지 url에 기본 param값을 추가함.
		if (page == 0) {
			return "redirect:/board/select?txt=" + txt + "&page=1";
		}

		PageRequest pageable = PageRequest.of(page - 1, 10);
		// 검색어가 포함된 경우
		List<ExBoard> list = bRepository.findAllByTitleIgnoreCaseContainingOrderByCityDesc(txt, pageable);
		model.addAttribute("list", list);

		// 전체 페이지수 계산 1 => 1, 13 => 2, 24 => 3
		long totPages = bRepository.countByTitleIgnoreCaseContaining(txt);
		model.addAttribute("totPages", (totPages - 1) / 10 + 1);

		return "board_select";
	}

	@RequestMapping(value = "/content")
	public String updateGET(Model model, @RequestParam(value = "city") String city) {
		Optional<ExBoard> vo1 = bRepository.findByCity(city);
		ExBoard vo2 = vo1.get();
		model.addAttribute("vo", vo2);

		if (vo2.getImg() != null) {
			String tmp = Base64.getEncoder().encodeToString(vo2.getImg());
			vo2.setBase64(tmp);
			vo2.setImg(null);
		}
		
		List<ExBoardReply> List = vo2.getReplyList();
		model.addAttribute("list", List);
		
		return "board_content";
	}

}
