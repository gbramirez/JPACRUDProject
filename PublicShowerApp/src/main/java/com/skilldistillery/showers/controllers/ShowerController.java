package com.skilldistillery.showers.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.showers.data.ShowerDAO;
import com.skilldistillery.showers.entities.Shower;

@Controller
public class ShowerController {

	@Autowired
	private ShowerDAO dao;

	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
//		model.addAttribute("shower", ShowerDAO.findById(1));// debug
//
//		System.out.println(ShowerDAO.findById(1));
		return "index";
	}

	@RequestMapping(path = "getShower.do", method = RequestMethod.GET)
	public String searchById(Model model, Integer showerId) {
		List<Shower> showers = new ArrayList<>();
		showers.add(dao.findById(showerId));
		model.addAttribute("showers", showers);
		return "TableResults";
	}

//	@RequestMapping(path = "addressSearch.do", method = RequestMethod.GET)
//	public ModelAndView findByAddress(String showerAddress) {
//		ModelAndView mv = new ModelAndView();
//		Shower s = dao.findByAddress(showerAddress);
//		mv.addObject("shower", s);
//		mv.setViewName("SearchByAddress");
//		return mv;
//	}

	@RequestMapping(path = "newShower.do", method = RequestMethod.POST)
	public String createShower(Shower shower, RedirectAttributes redir) {
		shower = dao.createShower(shower);
		boolean createdShower = true;
		redir.addFlashAttribute("createShower", createdShower);
		redir.addFlashAttribute("shower", shower);
		return "redirect:newShower.do";
	}

	@RequestMapping(path = "newShower.do", method = RequestMethod.GET)
	public String createShowerGet(Shower shower) {
		return "results";
	}
}
