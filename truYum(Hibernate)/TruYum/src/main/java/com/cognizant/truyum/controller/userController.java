package com.cognizant.truyum.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.cognizant.truyum.dao.CartDaoSqlImpl;
import com.cognizant.truyum.dao.CartEmptyException;
import com.cognizant.truyum.dao.MenuItemDaoSqlImpl;
import com.cognizant.truyum.model.MenuItem;

@Controller
public class userController {
	
	@Autowired
	MenuItemDaoSqlImpl menuItemDaoSqlImpl;
	
	@Autowired
	CartDaoSqlImpl cartDaoSqlImpl;
	
	static List<MenuItem> listcust;
	
	@RequestMapping(value = {"/showPage","/menu-item-list-customer"}, method = RequestMethod.GET)
	public String getMainPage(ModelMap model)
	{
	 listcust=menuItemDaoSqlImpl.getMenuItemListCustomer();
		model.put("inf", listcust);
		return "menu-item-list-customer";
	}
	
	@RequestMapping(value = {"/admin","menu-item-list-admin"}, method = RequestMethod.GET)
	public String getadminPage(ModelMap model)
	{
		List<MenuItem> list=menuItemDaoSqlImpl.getMenuItemListAdmin();
		model.put("inf", list);
		return "menu-item-list-admin";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String toEditMovie(@RequestParam int id,ModelMap model)
    {
		model.addAttribute("editItem", new MenuItem());
		model.addAttribute("itemId",id);
		return "edit-menu-item";
    }
	
	@RequestMapping(value = "cart",method = RequestMethod.GET)
	public String showFav(ModelMap model)
	{
		List<MenuItem> list = null;
		try {
			list = cartDaoSqlImpl.getAllCartItems(1);
		} catch (CartEmptyException e) {
			// TODO Auto-generated catch block
			model.put("inf", listcust);
			return "menu-item-list-customer";
		}
		model.put("inf", list);
		return "cart";
	}
	
	@RequestMapping(value = "/addToCart",method=RequestMethod.GET)
	public String addedToFav(@RequestParam int id,ModelMap model)
	{
		int userId=1;
		cartDaoSqlImpl.addCartItem(userId, id);
		model.put("inf", listcust);
		return "menu-item-list-customer";
	}
		
	@RequestMapping(value = "/edit-menu-item-success", method = RequestMethod.POST)
    public String successEditMovie(@ModelAttribute("editMovie") MenuItem menu,ModelMap model)
    {
	
		menuItemDaoSqlImpl.modifyMenuItem(menu);
		return "edit-menu-item-success";
    }
	
	@RequestMapping(value = "deleteItem", method = RequestMethod.GET)
	public String deleteItem(@RequestParam int id , ModelMap model)
	{
		cartDaoSqlImpl.removeCartItem(1, id);
		List<MenuItem> list = null;
		try {
			list = cartDaoSqlImpl.getAllCartItems(1);
		} catch (CartEmptyException e) {
			// TODO Auto-generated catch block
			model.put("inf", listcust);
			return "menu-item-list-customer";
		}
		model.put("inf", list);
		return "cart";
	}
	
	@ModelAttribute("categoryList")
	public List<String> sourceListGenerator() {
		List<String> list =new ArrayList<String>();
		list.add("Main Course");
		list.add("Starter");
		list.add("Dessert");
		
		return list;
	}


}
