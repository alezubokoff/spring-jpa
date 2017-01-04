package br.com.atts.controller;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.atts.dao.ContactDAO;
import br.com.atts.model.Contact;

@Controller
@RequestMapping(value="/contact")
@Transactional
public class ContactController {
	
	@Autowired
	private ContactDAO contactDAO;
	
	@RequestMapping(value="/new")
	public ModelAndView form(){
		ModelAndView mv = new ModelAndView("contact/form");
		return mv;
	}
	
	@RequestMapping(value="/save")
	public ModelAndView save(Contact contact){
		contactDAO.save(contact);
		ModelAndView mv = new ModelAndView("welcome");
		return mv;
	}

}
