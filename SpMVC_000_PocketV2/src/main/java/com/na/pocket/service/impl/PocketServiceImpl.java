package com.na.pocket.service.impl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.na.pocket.model.PocketVO;
import com.na.pocket.persistence.PocketDao;
import com.na.pocket.service.PocketService;

@Service
public class PocketServiceImpl implements PocketService {
	
	protected final PocketDao pocketDao;
	public PocketServiceImpl(PocketDao pocketDao) {
		this.pocketDao = pocketDao;
	}

	@Override
	public PocketVO findById(String userId) {
		return pocketDao.findById(userId);
	}

	@Override
	public int insert(PocketVO pocket) {
		
		return pocketDao.insert(pocket);
	}

	@Override
	public int update(PocketVO pocket) {
		return pocketDao.update(pocket);
	}

	@Override
	public int delete(int id) {
		
		return pocketDao.delete(id);
	}

	@Override
	public List<PocketVO> getPocketList() {
		// TODO Auto-generated method stub
		return pocketDao.selectAll();
	}

	@Override
	public PocketVO findByPocketId(int id) {
		// TODO Auto-generated method stub
		return pocketDao.findByPocketId(id);
	}
	
	@Override
	public void pocketEnter(PocketVO pocket, HttpSession session) {
		PocketVO pocketVO = pocketDao.findByPocketId(pocket.getId());
		if(pocketVO.getId() == pocket.getId()) {
			session.setAttribute("POCKETID", pocketVO.getId());
		}
	}


}
