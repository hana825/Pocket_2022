package com.na.pocket.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.na.pocket.model.ItemVO;
import com.na.pocket.model.PocketVO;
import com.na.pocket.service.ItemService;
import com.na.pocket.service.PocketService;

@Controller
public class HomeController {
	@Autowired
	private PocketService pocketService;
	@Autowired
	private ItemService itemService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		// 당구대 리스트 출력
		List<PocketVO> pocketList = pocketService.getPocketList();
		model.addAttribute("POCKET_LIST", pocketList);
		
		// 주문목록 출력
		List<ItemVO> itemList = itemService.getItemList();
		model.addAttribute("ITEM_LIST", itemList);
		return "home";
	}

	
}
