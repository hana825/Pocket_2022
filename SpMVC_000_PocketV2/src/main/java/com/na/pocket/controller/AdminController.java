package com.na.pocket.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.na.pocket.model.ItemVO;
import com.na.pocket.model.PocketVO;
import com.na.pocket.model.UserVO;
import com.na.pocket.service.ItemService;
import com.na.pocket.service.OrderService;
import com.na.pocket.service.PocketService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AdminController {
	
	/*
	 *  관리자 페이지
	 *  
	 *  당구대 추가
	 *  주문 item 서비스
	 */
	
	@Autowired
	private PocketService pocketService;
	
	@Autowired
	private ItemService itemService;
	
	@Autowired
	private OrderService orderService;
	
	// 당구대 삽입
	@RequestMapping(value="/pocketIn", method=RequestMethod.GET)
	public String insert(PocketVO pocket, HttpSession session) {
		UserVO user = (UserVO) session.getAttribute("USER");
		pocket.setUserId(user.getUserId());
		pocketService.insert(pocket);
		return "redirect:/";
	}
	
	// 당구대 삭제
	@RequestMapping(value="/pocketDel/{id}", method=RequestMethod.GET)
	public String delete(@PathVariable(name = "id") int id) {
		pocketService.delete(id);
		return "redirect:/";
	}
	
	// 주문목록(item) 삽입
	@RequestMapping(value="/itemIn", method=RequestMethod.POST)
	public String insert(ItemVO item) {
		itemService.insert(item);
		log.debug("주문목록 {}", item.toString());
		return "redirect:/";
	}
	
	// item 삭제
	@RequestMapping(value="/itemDel/{id}", method=RequestMethod.GET)
	public String deleteItem(@PathVariable(name="id") int id) {
		itemService.delete(id);
		return "redirect:/";
	}
	
	// 주문 완료
	@RequestMapping(value="/orderCom/{id}", method=RequestMethod.GET)
	public String orderComp(@PathVariable(name="id") int id) {
		orderService.delete(id);
		return "redirect:/";
	}
	
	// 결제 완료
	@RequestMapping(value="/totalCom/{id}", method=RequestMethod.GET)
	public String totalCom(@PathVariable(name="id") int id) {
		PocketVO pocketVO = pocketService.findByPocketId(id);
		pocketVO.setTotal(0);
		pocketService.update(pocketVO);
		return "redirect:/";
	}


}
