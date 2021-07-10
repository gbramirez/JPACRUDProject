package com.skilldistillery.showers.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.showers.data.ShowerDAO;

@Controller
public class ShowerController {

	@Autowired
	private ShowerDAO dao;

	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
		model.addAttribute("shower", dao.findById(1));// debug
		
		System.err.println(dao.findById(1));
		return "index";
		
		
	}
}
