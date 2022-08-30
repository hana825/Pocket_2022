package com.na.pocket.persistence;

import java.util.List;

import com.na.pocket.model.PocketVO;

public interface PocketDao {
	
	public PocketVO findById(String userId);
	public int insert(PocketVO pocket);
	public int update(PocketVO pocket);
	public int delete(int id);
	public List<PocketVO> selectAll();
	
	public PocketVO findByPocketId(int id);

}
