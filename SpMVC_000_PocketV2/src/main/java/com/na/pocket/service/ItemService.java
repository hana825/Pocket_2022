package com.na.pocket.service;

import java.util.List;

import com.na.pocket.model.ItemVO;

public interface ItemService {

	public ItemVO findById(int id);
	public int insert(ItemVO item);
	public int update(ItemVO item);
	public int delete(int id);
	
	// selectAll
	public List<ItemVO> getItemList();
	
}
