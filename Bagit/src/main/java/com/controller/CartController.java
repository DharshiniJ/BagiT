/*package com.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.DaoImpl.*;

import com.model.*;


@Controller
public class CartController
{

	@Autowired
	UserDaoImpl userDaoImpl;
	@Autowired
	CategoryDaoImpl categoryDaoImpl;
	@Autowired
	CartDaoImpl cartDaoImpl;
	@Autowired
	ProductDaoImpl productDaoImpl;
	@Autowired 
	SupplierDaoImpl supplierDaoImpl;
	
	@RequestMapping(value="/prodDetails/{cid}")
	public ModelAndView prodDet (@PathVariable("cid") int cid)
	{
		ModelAndView mv = new ModelAndView();
		Product p = new Product();
		mv.addObject("product",p);
		mv.setViewName("prodDetails");
		return mv;
		
	}
	
	@RequestMapping(value="/addToCart", method=RequestMethod.POST)
	public ModelAndView addTocart(HttpServletRequest req)
	{
		ModelAndView mv=new ModelAndView();
		Principal principal=req.getUserPrincipal();
		String userEmail=principal.getName();
		try
		{
			int pid=Integer.parseInt(req.getParameter("pId"));
			Double price=Double.parseDouble(req.getParameter("pPrice"));
			int quantity=Integer.parseInt(req.getParameter("pStock"));
			String ProdName=req.getParameter("name");
			String imgName=req.getParameter("imgname");
			Cart cartexist=cartDaoImpl.getCartById(pid, userEmail);
			
			if(cartexist==null)
			{
				Cart cm = new Cart();
				cm.setCartImg(imgName);
				cm.setCartPrice(price);
				cm.setCartProductName(ProdName);
				cm.setCartQnty(quantity);
				User u =new User();
				cm.setCartUserDetails(u);
				cartDaoImpl.insert(cm);
				
			}
			mv.addObject(attributeValue);
			mv.setViewName("cart");
			
		catch(Exception e)
		{
			
		}
			
		}
	}
	
	@RequestMapping(value="/checkout",method=RequestMethod.GET)
	public ModelAndView chkproc (HttpServlet re)
	{
		ModelAndView mv= new ModelAndView("checkout");
		Principal pr=re.getUserPricipal();
		String userEmail=pr.getName();
		User u=new User();
		List<Cart> cart =cartDaoImpl.findCartById(userEmail);
		mv.addObject("user",u);
		mv.addObject("cart",cart);
		return mv;
		
		
	}
	
}*/
