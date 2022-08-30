package com.na.pocket.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.na.pocket.model.ItemVO;
import com.na.pocket.model.PocketVO;
import com.na.pocket.service.ItemService;
import com.na.pocket.service.PocketService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class PocketController {
	
	@Autowired
	private PocketService pocketService;
	@Autowired
	private ItemService itemService;
	// 당구장 번호 입력 후 출입
	@RequestMapping(value="/pocketEnter", method=RequestMethod.POST)
	public String enter(PocketVO pocket, HttpSession httpSession, Model model) {
		List<ItemVO> itemList = itemService.getItemList();
		pocketService.pocketEnter(pocket, httpSession);
		model.addAttribute("ITEM_LIST", itemList);
		log.debug("당구대 번호 {}", pocket);
		return "/user/home";
	}
	
	// 당구장 퇴장
	@RequestMapping(value="/pocketExit", method=RequestMethod.GET)
	public String exit(HttpSession httpSession) {
		httpSession.removeAttribute("POCKETID");
		return "home";
	}

}
