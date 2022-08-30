package com.na.pocket.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.na.pocket.model.ItemVO;
import com.na.pocket.model.OrderVO;
import com.na.pocket.service.ItemService;
import com.na.pocket.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	private ItemService itemService;
	@Autowired
	private OrderService orderService;
	
	@GetMapping({"/",""})
	public String order(Model model) {
		model.addAttribute("LAYOUT", "ORDER");
		return "/user/home";
	}
	
	@RequestMapping(value="/get/{id}/{count}/{pocketId}", method=RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<List<ItemVO>> order(@PathVariable("id") int id,
			@PathVariable("count") int count,
			@PathVariable("pocketId") int pocketId,
			Model model) {
		ItemVO item = itemService.findById(id);
		orderService.saveOrder(item, count, pocketId);
		List<OrderVO> orderList = orderService.findByPocketId(pocketId);
		List<ItemVO> itemList = new ArrayList<>();
		for(OrderVO order: orderList) {
			itemList.add(itemService.findById(order.getItem()));
		}
		return ResponseEntity.ok(itemList);
	}

}
