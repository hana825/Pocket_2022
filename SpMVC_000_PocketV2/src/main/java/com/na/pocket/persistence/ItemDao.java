package com.na.pocket.persistence;

import java.util.List;

import com.na.pocket.model.ItemVO;
import com.na.pocket.model.PocketVO;

public interface ItemDao {
	
	public ItemVO findById(int id);
	public List<ItemVO> selectAll();
	public int insert(ItemVO item);
	public int update(ItemVO item);
	public int delete(int id);

}
