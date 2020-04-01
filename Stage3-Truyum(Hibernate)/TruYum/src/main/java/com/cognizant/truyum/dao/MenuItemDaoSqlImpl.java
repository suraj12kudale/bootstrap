package com.cognizant.truyum.dao;

import java.awt.Menu;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.repository.MenuItemDao;

@Service
public class MenuItemDaoSqlImpl{
	
	@Autowired
	MenuItemDao menuItemDao;

	@Transactional
	public List<MenuItem> getMenuItemListAdmin() {
		List<MenuItem> menu=menuItemDao.getMenuItemListAdmin();
		return menu;
	}

	@Transactional
	public List<MenuItem> getMenuItemListCustomer() {
		List<MenuItem> menu=menuItemDao.getMenuItemListCustomer();
			return menu;
	}

	@Transactional
	public void modifyMenuItem(MenuItem menuItem) {
		Optional<MenuItem> res=menuItemDao.findById(menuItem.getId());
		MenuItem menuitem1=res.get();
		menuitem1.setActive(menuItem.isActive());
		menuitem1.setCategory(menuItem.getCategory());
		menuitem1.setDateOfLaunch(menuItem.getDateOfLaunch());
		menuitem1.setFreeDelivery(menuItem.isFreeDelivery());
		menuitem1.setName(menuItem.getName());
		menuitem1.setPrice(menuItem.getPrice());
		
		menuItemDao.save(menuitem1);

	}

	@Transactional
	public MenuItem getMenuItem(long menuItemId) {
		// TODO Auto-generated method stub
		return null;
	}

}
