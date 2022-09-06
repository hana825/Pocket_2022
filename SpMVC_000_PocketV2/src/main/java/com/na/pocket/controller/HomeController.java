package com.na.pocket.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.na.pocket.model.ItemVO;
import com.na.pocket.model.OrderVO;
import com.na.pocket.model.PocketVO;
import com.na.pocket.service.ItemService;
import com.na.pocket.service.OrderService;
import com.na.pocket.service.PocketService;

@Controller
public class HomeController {
	@Autowired
	private PocketService pocketService;
	@Autowired
	private ItemService itemService;
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, @RequestParam(required = false, defaultValue = "0", name = "total") int total, @RequestParam(required = false, defaultValue = "0", name = "pocketId") int pocketId) {
		System.out.println(total);
		// 당구대 리스트 출력
		List<PocketVO> pocketList = pocketService.getPocketList();
		
		for(PocketVO pocket:pocketList) {
			List<OrderVO> orderList = orderService.findByPocketId(pocket.getId());
			for(OrderVO order:orderList) {
				order.setName(itemService.findById(order.getItem()).getName());
			}
			pocket.setOrderList(orderList);
		}
		
		model.addAttribute("POCKET_LIST", pocketList);
		
		// item 목록 출력
		List<ItemVO> itemList = itemService.getItemList();
		model.addAttribute("ITEM_LIST", itemList);

		return "home";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	@ResponseBody
	public String insert(int total, int pocketId) {
		System.out.println(total);
		System.out.println(pocketId);
		PocketVO foundPocket =  pocketService.findByPocketId(pocketId);
		foundPocket.setTotal(total);
		System.out.println("foundPocket : "+foundPocket);
		pocketService.update(foundPocket);
		
		return "";
		
	}
	

	
}
