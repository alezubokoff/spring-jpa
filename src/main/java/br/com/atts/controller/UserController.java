package br.com.atts.controller;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.atts.dao.UserDAO;
import br.com.atts.model.User;

@Controller
@Transactional
@RequestMapping(value = "/user")
public class UserController {

	@Autowired
	private UserDAO userDAO;

	@RequestMapping(value = "/new")
	public ModelAndView form() {
		ModelAndView mv = new ModelAndView("user/form");
		return mv;
	}

	@RequestMapping(value = "/save")
	public ModelAndView save(User user, HttpSession session) {
		userDAO.save(user);
		session.setAttribute("userLogged", user);
		ModelAndView mv = new ModelAndView("welcome");
		return mv;
	}

	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		ModelAndView mv = new ModelAndView("../../index");
		return mv;
	}

	@RequestMapping(value="/login")
	public ModelAndView login(String email, String password, HttpSession session){
		ModelAndView mv;
		try{
			User user = userDAO.findByEmailPassword(email, password);
			mv = new ModelAndView("welcome");
			session.setAttribute("userLogged", user);
		}catch(Exception e){
			mv = new ModelAndView("../../index");
			mv.addObject("userMessage", "Usuário ou senha inválido");
		}
		return mv;
		
	}

}
