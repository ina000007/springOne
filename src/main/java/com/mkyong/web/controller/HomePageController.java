package com.mkyong.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomePageController {

	@RequestMapping("/")
	public ModelAndView getData() {

		ModelAndView model = new ModelAndView("index");
	
		return model;

	}

}