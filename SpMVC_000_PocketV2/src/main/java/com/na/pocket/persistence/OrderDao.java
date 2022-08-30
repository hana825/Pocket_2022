package com.na.pocket.persistence;

import java.util.List;

import com.na.pocket.model.OrderVO;

public interface OrderDao {
	
	public List<OrderVO> selectAll();
	public int insert(OrderVO order);
	public int update(OrderVO order);
	public int delete(int id);
	public List<OrderVO> findByPocketId(int pocketId);


}
