package com.na.pocket.service.impl;

import java.nio.file.attribute.UserPrincipalNotFoundException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.na.pocket.model.UserVO;
import com.na.pocket.persistence.UserDao;
import com.na.pocket.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	@Override
	public void userJoin(UserVO user) throws Exception {
		userDao.userJoin(user);
	}


	@Override
	public void userLogin(UserVO user, HttpSession session) throws UserPrincipalNotFoundException {
		UserVO userVO = userDao.findById(user.getUserId());
		if(userVO.getPassword().equals(user.getPassword())) {
			session.setAttribute("USER", userVO);
		} else {
			throw new UserPrincipalNotFoundException("유저가 없습니다");
		}
	}

}
