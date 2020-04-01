package com.cognizant.truyum.repository;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.truyum.model.MenuItem;

@Repository
public interface MenuItemDao extends CrudRepository<MenuItem, String> {
	
	@Query("select u from MenuItem u")
	public List<MenuItem> getMenuItemListAdmin();

	@Query("select u from MenuItem u where active= true ")
	public List<MenuItem> getMenuItemListCustomer();

	//public void modifyMenuItem(MenuItem menuItem);

	//public MenuItem getMenuItem(long menuItemId);

	@Query("select u from MenuItem u where id=?1")
	public Optional<MenuItem> findById(int id);
}
