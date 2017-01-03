package br.com.atts.controller;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.atts.dao.UserDAO;
import br.com.atts.model.User;

@Controller
@Transactional
@RequestMapping(value="/user")
public class UserController {
	
	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping(value="/new")
	public ModelAndView form(){
		ModelAndView mv = new ModelAndView("user/form");
		return mv;
	}
	
	@RequestMapping
	public ModelAndView save(User user){
		userDAO.save(user);
		ModelAndView mv = new ModelAndView("site/");
		return mv;
	}

}
