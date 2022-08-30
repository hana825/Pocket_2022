package com.na.pocket.service;

import java.nio.file.attribute.UserPrincipalNotFoundException;

import javax.servlet.http.HttpSession;

import com.na.pocket.model.UserVO;

public interface UserService {
	
	// 회원가입
	public void userJoin(UserVO user) throws Exception;
	// 로그인
	public void userLogin(UserVO user, HttpSession session) throws UserPrincipalNotFoundException;

}
