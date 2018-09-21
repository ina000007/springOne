package com.mkyong.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AddFruit {
	@RequestMapping("/addFrt/id")
	public ModelAndView addFrt(@RequestParam("id") String id,HttpServletRequest req, HttpServletResponse res) {
		String price="";
		String decs="";
		String name="";
	
		if(id.equals("1")){
			name = "Guava";
			decs = "Guava, Psidium guajava, is an evergreen shrub or small tree in the family Myrtaceae grown for its edible fruits. Guava has a slender trunk with smooth green to red-brown bark.";
			price = "150";
		}
		if(id.equals("2")){
			name = "Mango";
			decs = "Mango, Mangifera indica, is an evergreen tree in the family Anacardiaceae grown for its edible fruit. The mango tree is erect and branching with a thick trunk and broad, rounded canopy. The leaves of the tree are are shiny and dark green.";
			price = "250";
		}
		if(id.equals("3")){
			name = "Pineapple";
			decs = "Pineapple, Ananas comosus, is an herbaceous biennial or perennial plant in the family Bromeliaceae grown for its edible fruit.";
			price = "350";
		}
		ModelAndView mv = new ModelAndView("frtDesc");
		req.setAttribute("prc", price);
		req.setAttribute("name", name);
		req.setAttribute("desc", decs);
		return mv;
	}
}
