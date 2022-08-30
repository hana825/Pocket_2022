package com.na.pocket.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.na.pocket.model.PocketVO;

public interface PocketService {
	
	public PocketVO findById(String userId);
	public int insert(PocketVO pocket);
	public int update(PocketVO pocket);
	public int delete(int id);
	public List<PocketVO> getPocketList();

	public PocketVO findByPocketId(int id);
	
	// 당구대 입력후 출입
	public void pocketEnter(PocketVO pocket, HttpSession session);
	
	
	

}
