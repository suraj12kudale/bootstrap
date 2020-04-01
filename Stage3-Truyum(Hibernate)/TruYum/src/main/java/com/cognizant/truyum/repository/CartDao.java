package com.cognizant.truyum.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.truyum.dao.CartEmptyException;
import com.cognizant.truyum.model.Cart;
import com.cognizant.truyum.model.MenuItem;

@Repository
public interface CartDao extends CrudRepository<Cart,String>{
//	public void addCartItem(long userId, long menuItemId);
//
  @Query("select f.c_id from Cart f where us_id=?1")
  public List<Integer> getAllCartItems(int userId) throws CartEmptyException;

    @Modifying
	@Query("delete from Cart f where f.us_id=?1 and f.c_id=?2")
	public void removeCartItem(int userId, int menuItemId);
}
