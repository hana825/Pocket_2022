package com.na.pocket.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.na.pocket.model.ItemVO;
import com.na.pocket.service.ItemService;
import com.na.pocket.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	private ItemService itemService;
	@Autowired
	private OrderService orderService;

	@GetMapping({ "/", "" })
	public String order(Model model) {
		model.addAttribute("LAYOUT", "ORDER");
		return "/user/home";
	}

	@RequestMapping(value = "/get/{id}", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, headers = {
			"Accept=application/json" })
	@ResponseBody
	public ResponseEntity<String> order(@PathVariable("id") int id, Model model, @RequestBody List<ItemVO> itemList) {
		System.out.println(id);
//		ItemVO item = itemService.findById(id);

		for (ItemVO itemVO : itemList) {
			if (itemVO.getCount() != 0) {
				orderService.saveOrder(itemVO, id);
			}
		}
//		List<OrderVO> orderList = orderService.findByPocketId(pocketId);
//		List<ItemVO> itemList = new ArrayList<>();
//		for(OrderVO order: orderList) {
//			itemList.add(itemService.findById(order.getItem()));
//		}
		return ResponseEntity.ok("hi");
	}

}
