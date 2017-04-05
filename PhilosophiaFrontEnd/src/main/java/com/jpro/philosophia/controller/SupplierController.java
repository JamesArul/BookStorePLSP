package com.jpro.philosophia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SupplierController {
	
	@RequestMapping("")
	public ModelAndView showSupplierAdd()
	{
		ModelAndView mv=new ModelAndView("/Admin/SupplierAdd");
		return mv;
	}

}
