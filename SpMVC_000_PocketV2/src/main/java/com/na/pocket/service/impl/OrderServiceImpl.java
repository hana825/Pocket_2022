package com.na.pocket.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.na.pocket.model.ItemVO;
import com.na.pocket.model.OrderVO;
import com.na.pocket.persistence.OrderDao;
import com.na.pocket.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	private OrderDao orderDao;
	
	@Override
	public void saveOrder(ItemVO item, int count, int pocketId) {
		orderDao.insert(OrderVO.builder()
				.count(count)
				.pocketId(pocketId)
				.item(item.getId())
				.build());
	}

	@Override
	public List<OrderVO> findByPocketId(int pocketId) {
		
		return orderDao.findByPocketId(pocketId);
	}

}
