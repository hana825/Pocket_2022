package com.na.pocket.persistence;

import com.na.pocket.model.UserVO;

public interface UserDao {
	
	// 회원가입
	public void userJoin(UserVO user);
	// 로그인
	public UserVO findById(String userId);

}
