package com.jpro.philosophia.controller;

import org.springframework.stereotype.Controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping("/")
	public ModelAndView show()
	{
		ModelAndView mv=new ModelAndView("/Home");
		session.setAttribute("loginMsg", "notLoggedIn");
		session.setAttribute("UserMsg", null);//Indicates user is logged in
		session.setAttribute("AdminMsg", null);//Indicates Admin is logged in
		return mv;
	}
	
	@RequestMapping("/goHome")
	public ModelAndView showHome()
	{
		ModelAndView mv=new ModelAndView("/Home");
		return mv;
	}
	
	@RequestMapping("/goAboutUs")
	public ModelAndView showAboutUs()
	{
		ModelAndView mv=new ModelAndView("/AboutUs");
		return mv;
	}
	
	@RequestMapping("/goLogin")
	public ModelAndView showLogin()
	{
		ModelAndView mv=new ModelAndView("/Login");
		return mv;
	}
	
	@RequestMapping("/goAdmin")
	public ModelAndView showAdmin()
	{
		ModelAndView mv;
		if(session.getAttribute("AdminMsg")!=null)
		{
		mv=new ModelAndView("/Admin/Admin");
		}
		else
		{
			mv=new ModelAndView("/Error");
		}
		return mv;
	}
	
	@RequestMapping("/goProdView")
	public ModelAndView showProducts()
	{
		ModelAndView mv=new ModelAndView("/Products");
		return mv;
	}

}
