package com.controller;


import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.Dao.ProductDao;
import com.DaoImpl.UserDaoImpl;
import com.model.Product;
import com.model.User;

@Controller
public class indexController {
	@Autowired
	UserDaoImpl userDaoImpl;
	@Autowired
	ProductDao productDao;
	

	@RequestMapping("/goTologin")
	public String goTologin(Model m)
	{
		User user= new User();
		m.addAttribute(user);
		return "login";
	}
	
	@RequestMapping("/userLogged")
	public String userLogged(Model m,HttpSession session)
	{
		String roleName=null;
		boolean loggedIn=false;
		Authentication auth=SecurityContextHolder.getContext().getAuthentication();
		String loggedUsername=auth.getName();
		session.setAttribute("username", loggedUsername);
		Collection<GrantedAuthority> auths=(Collection<GrantedAuthority>)auth.getAuthorities();
		for(GrantedAuthority role:auths)
		{
			if(role.getAuthority().equals("ROLE_ADMIN"))
			{
				roleName="admin";
				loggedIn=true;
			}
			else
			{
				roleName="user";
				loggedIn=true;
			}
		}
		
		session.setAttribute("roleName", roleName);
		session.setAttribute("loggedIn", loggedIn);
		
		
		return "redirect:/";
	}
	
	@RequestMapping("/error")
	public String errorPage()
	{
		return "/error";
	}
	
	@RequestMapping("/")
	public String index(Model m)
	{
		List<Product> listLatestProduct=productDao.retriveLatestProduct();
		m.addAttribute("listLatestProduct", listLatestProduct);
		return "index";
	}

		
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public ModelAndView goToRegister()
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("user",new User());
		mv.setViewName("register");
		return mv;
	}
	
	
	@RequestMapping(value="/saveRegister", method=RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute("user") User user)
	{
		ModelAndView mv = new ModelAndView();
		user.setRole("ROLE_USER");
		user.setEnabled(true);
		userDaoImpl.insertUser(user);
		mv.setViewName("index");
		return mv;
  
}
	
}

