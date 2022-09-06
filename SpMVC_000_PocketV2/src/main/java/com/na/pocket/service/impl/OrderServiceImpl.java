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
	public void saveOrder(ItemVO item, int pocketId) {
		orderDao.insert(OrderVO.builder()
				.count(item.getCount())
				.pocketId(pocketId)
				.item(item.getId())
				.build());
	}

	@Override
	public List<OrderVO> findByPocketId(int pocketId) {
		
		return orderDao.findByPocketId(pocketId);
	}

	@Override
	public List<OrderVO> getOrderList() {
		return orderDao.selectAll();
	}

	@Override
	public int delete(int id) {
		return orderDao.delete(id);
	}

}
