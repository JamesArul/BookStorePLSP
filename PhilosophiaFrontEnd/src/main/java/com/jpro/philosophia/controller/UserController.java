package com.jpro.philosophia.controller;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jpro.philosophibackend.dao.CartDAO;
import com.jpro.philosophibackend.dao.ProductDAO;
import com.jpro.philosophibackend.dao.UserDAO;
import com.jpro.philosophibackend.dao.impl.UserDAOImpl;
import com.jpro.philosophibackend.domain.Cart;
import com.jpro.philosophibackend.domain.User;

@Controller
public class UserController {
	
	private static final Logger log = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private CartDAO cartDAO;
	
	@Autowired
	public HttpSession session;
	
	@Autowired
	public User user;
	/*
	
	@RequestMapping("/login")
	public ModelAndView userlogin(@RequestParam("uname") String userid,@RequestParam("upwd") String userpwd)
	{
		log.debug("Start of method userlogin");
		User user=userDAO.getUserById(userid);
		ModelAndView mv;
		String pwd=user.getUserPassword();
		if(pwd.equals(userpwd))
		{
			if(user.getUserRole().equals("ROLE_ADMIN"))
			{
				mv=new ModelAndView("/Home");
				session.setAttribute("AdminMsg","AdminLoggedIn");
				session.setAttribute("UserName", user.getUserName());
				session.setAttribute("loginMsg", null);
			}
			else
			{
				List<Cart> carts=cartDAO.getCartsOfUser(user.getUserID());
				mv=new ModelAndView("/Home");
				session.setAttribute("UserMsg","LoggedIn");
				session.setAttribute("UserName", user.getUserName());
				session.setAttribute("loginMsg", null);
				if(carts!=null)
				{
					Cart innerCart=new Cart();
					Iterator<Cart> iter=carts.iterator();
					while(iter.hasNext())
					{
						innerCart = iter.next();
					}
					if(innerCart!=null)
					{
					if(innerCart.getCartStatus()=="delivered" || innerCart.getCartStatus()=="deployed")
					{
						session.setAttribute("CurrentCartID", null);
					}
					else
					{
						session.setAttribute("CurrentCartID", innerCart.getCartID());
					}
					}
				}
				else
				{
					session.setAttribute("CurrentCartID", null);
				}
			}
		}
		else
		{
			mv=new ModelAndView("/Home");
			session.setAttribute("loginMsg", "notloggedIn");
			mv.addObject("msg","Invlaid Login");
		}
		log.debug("End of method userlogin");
		return mv;
	}
	
	/*
	@SuppressWarnings("unchecked")
	@RequestMapping("/Login_Auth_Success")
	public String secureLogin(HttpSession session,Model model)
	{
		String userid = SecurityContextHolder.getContext().getAuthentication().getName();
		user=userDAO.getUserById(userid);
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		String page="";		
		String role="ROLE_USER";		
		for (GrantedAuthority authority : authorities) 		
		{		  		     
		if (authority.getAuthority().equals(role)) 		     
		{		    	 
		session.setAttribute("UserLoggedIn", "true");	
		session.setAttribute("UserName", user.getUserName());
		session.setAttribute("loginMsg", null);
		page="/Home";		    	 		     
		}		     
		else 		     
		{		    	 
		session.setAttribute("AdminMsg", "AdminLoggedIn");	
		session.setAttribute("UserName", user.getUserName());
		session.setAttribute("loginMsg", null);
		}		
		}		
		return page;	
	}
	*/
	/*
	@RequestMapping("/goRegister")
	public ModelAndView showRegister()
	{
		log.debug("Start of method showRegister");
		ModelAndView mv=new ModelAndView("/Register","command", new User());
		log.debug("End of method showRegister");
		return mv;
	}
	
	@RequestMapping("/addUser")
	public ModelAndView insertUser(@ModelAttribute User user)
	{
		log.debug("Start of method insertUser");
		user.setUserRole("ROLE_USER");
		userDAO.saveUser(user);
		ModelAndView mv=new ModelAndView("/Home");
		log.debug("End of method insertUser");
		return mv;
	}
	*/
	@RequestMapping("/User_login")
	public String userLoginProcessing()
	{
		System.out.println("Processing Login");
		return "";
	}
	/*
	@RequestMapping("/goLogout")
	public ModelAndView logoutUser()
	{
		log.debug("Start of method logoutUser");
		ModelAndView mv=new ModelAndView("/Home");
		session.removeAttribute("UserMsg");
		session.removeAttribute("UserName");
		session.removeAttribute("AdminMsg");
		session.setAttribute("loginMsg", "notloggedIn");
		log.debug("End of method logoutUser");
		return mv;
	}
	*/
}
