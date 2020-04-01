package com.cognizant.moviecruiser.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.moviecruiser.dao.FavoritesDaoSqlImpl;
import com.cognizant.moviecruiser.dao.FavoritesEmptyException;
import com.cognizant.moviecruiser.dao.MovieDaoSqlImpl;
import com.cognizant.moviecruiser.model.Movie;

@Controller
public class UserController {
	
	@Autowired
	MovieDaoSqlImpl movieDaoSqlImpl;
	
	@Autowired
	FavoritesDaoSqlImpl favDaoSqlImpl;
	
	static List<Movie> listcust;
	
	@RequestMapping(value = {"/showPage","/menu-item-list-customer"}, method = RequestMethod.GET)
	public String getMainPage(ModelMap model)
	{
	 listcust=movieDaoSqlImpl.getMovieListCustomer();
		model.put("inf", listcust);
		return "menu_item_list_customer";
	}
	
	@RequestMapping(value = {"/admin","menu-item-list-admin"}, method = RequestMethod.GET)
	public String getadminPage(ModelMap model)
	{
		List<Movie> list=movieDaoSqlImpl.getMovieListAdmin();
		model.put("inf", list);
		return "menu-item-list-admin";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String toEditMovie(@RequestParam int id,ModelMap model)
    {
		model.addAttribute("editMovie", new Movie());
		model.addAttribute("Movieid",id);
		return "edit-menu-item";
    }
	
	@RequestMapping(value = "showfavorite",method = RequestMethod.GET)
	public String showFav(ModelMap model)
	{
		List<Movie> list = null;
		try {
			list = favDaoSqlImpl.getAllFavoritesMovies(1);
		} catch (FavoritesEmptyException e) {
			// TODO Auto-generated catch block
			model.put("inf", listcust);
			return "menu_item_list_customer";
		}
		model.put("inf", list);
		return "favorite";
	}
	
	@RequestMapping(value = "/favorite",method=RequestMethod.GET)
	public String addedToFav(@RequestParam int id,ModelMap model)
	{
		int userId=1;
		favDaoSqlImpl.addFavoritesMovie(userId, id);
		model.put("inf", listcust);
		return "menu_item_list_customer";
	}
		
	@RequestMapping(value = "/edit-menu-item-success", method = RequestMethod.POST)
    public String successEditMovie(@ModelAttribute("editMovie") Movie movie,ModelMap model)
    {
	
		movieDaoSqlImpl.modifyMovie(movie);
		return "edit-menu-item-success";
    }
	
	@RequestMapping(value = "deleteItem", method = RequestMethod.GET)
	public String deleteItem(@RequestParam int id , ModelMap model)
	{
		favDaoSqlImpl.removeFavoritesMovie(1, id);
		List<Movie> list = null;
		try {
			list = favDaoSqlImpl.getAllFavoritesMovies(1);
		} catch (FavoritesEmptyException e) {
			// TODO Auto-generated catch block
			model.put("inf", listcust);
			return "menu_item_list_customer";
		}
		model.put("inf", list);
		return "favorite";
	}
	
	@ModelAttribute("genreList")
	public List<String> sourceListGenerator() {
		List<String> list =new ArrayList<String>();
		list.add("Science Fiction");
		list.add("Superhero");
		list.add("Romance");
		list.add("Comedy");
		list.add("Adventure");
		list.add("Thriller");
		return list;
	}

}
