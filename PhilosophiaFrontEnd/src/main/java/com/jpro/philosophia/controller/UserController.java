package com.jpro.philosophia.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jpro.philosophibackend.dao.UserDAO;
import com.jpro.philosophibackend.domain.User;

@Controller
public class UserController {
	
	private static final Logger log = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	public HttpSession session;
	
	@Autowired
	public User user;
	
	@RequestMapping("/goRegister")
	public ModelAndView showRegister()
	{
		log.debug("Start of method showRegister");
		ModelAndView mv=new ModelAndView("/Register","command", new User());
		log.debug("End of method showRegister");
		return mv;
	}
	
	@RequestMapping("/addUser")
	public String insertUser(@ModelAttribute User user, BindingResult bindingResult , ModelMap model)
	{
		log.debug("Start of method insertUser");
		
		if(bindingResult.hasErrors())
		{
			log.debug("End of method insertUser : User Not Registered");
			return "/Error";
		}
		else
		{
			user.setUserRole("ROLE_USER");
			userDAO.saveUser(user);
			log.debug("End of method insertUser");
			return "/Home";
		}
	}
	
}
