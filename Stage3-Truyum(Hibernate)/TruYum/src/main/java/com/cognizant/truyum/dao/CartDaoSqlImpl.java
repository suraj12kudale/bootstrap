package com.cognizant.truyum.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cognizant.truyum.model.Cart;
import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.repository.CartDao;
import com.cognizant.truyum.repository.MenuItemDao;

@Service
public class CartDaoSqlImpl {
	
	@Autowired
	CartDao cartDao;
	
	@Autowired
	MenuItemDao menuItemDao;

	@Transactional
	public void addCartItem(int userId, int menuItemId) {
		Cart cart=new Cart(userId, menuItemId);
		cartDao.save(cart);
	}

	@Transactional
	public List<MenuItem> getAllCartItems(int userId) throws CartEmptyException {
		List<Integer> list=cartDao.getAllCartItems(userId);
		List<MenuItem> menu=new ArrayList<MenuItem>();
		for (Integer i : list) {
			MenuItem movie1=menuItemDao.findById(i).get();
			menu.add(movie1);
		}
		return menu;
	}

	@Transactional
	public void removeCartItem(int userId, int menuItemId) {
		// TODO Auto-generated method stub
      cartDao.removeCartItem(userId, menuItemId);
	}

}
