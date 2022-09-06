package com.na.pocket.service;

import java.util.List;

import com.na.pocket.model.ItemVO;
import com.na.pocket.model.OrderVO;

public interface OrderService {
	public void saveOrder(ItemVO item, int pocketId);

	public int delete(int id);
	
	public List<OrderVO> findByPocketId(int pocketId);
	
	// selectAll
	public List<OrderVO> getOrderList();
}
