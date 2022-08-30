package com.na.pocket.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.attribute.UserPrincipalNotFoundException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.na.pocket.model.UserVO;
import com.na.pocket.service.UserService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value="/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	
	
	@RequestMapping(value = "/login", method=RequestMethod.GET)
	public String login() {
		return null;
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(UserVO user, HttpSession httpSession){
		
		try {
			userService.userLogin(user, httpSession);
		} catch (UserPrincipalNotFoundException e) {
		}
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession httpSession) {
		// session 경로 제거
		httpSession.removeAttribute("USER");
		return "redirect:/";
	}
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String home() {
		return null;
	}
	

}