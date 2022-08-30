package com.na.pocket.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.na.pocket.model.ItemVO;
import com.na.pocket.persistence.ItemDao;
import com.na.pocket.service.ItemService;
@Service
public class ItemServiceImpl implements ItemService {
	
	protected final ItemDao itemDao;
	public ItemServiceImpl(ItemDao itemDao) {
		this.itemDao = itemDao;
	}

	@Override
	public ItemVO findById(int id) {
		return itemDao.findById(id);
	}

	@Override
	public int insert(ItemVO item) {
		return itemDao.insert(item);
	}

	@Override
	public int update(ItemVO item) {
		
		return itemDao.update(item);
	}

	@Override
	public int delete(int id) {
		return itemDao.delete(id);
	}

	@Override
	public List<ItemVO> getItemList() {
		return itemDao.selectAll();
	}
	

}
