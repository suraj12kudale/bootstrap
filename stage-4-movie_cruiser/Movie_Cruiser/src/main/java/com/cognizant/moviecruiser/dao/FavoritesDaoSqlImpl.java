package com.cognizant.moviecruiser.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cognizant.moviecruiser.model.Favorites;
import com.cognizant.moviecruiser.model.Movie;

@Service
public class FavoritesDaoSqlImpl {

	@Autowired
	FavoritesDao favoriteDao;
	
	@Autowired
	MovieDao movieDao;
	
	@Transactional
	public void addFavoritesMovie(int userId, int movieId) {
		int id=(int)favoriteDao.count();
		Favorites fav=new Favorites(userId,movieId);
		favoriteDao.save(fav);
		
	}
	
	@Transactional
	public List<Movie> getAllFavoritesMovies(int userId) throws FavoritesEmptyException {
		List<Integer> list=favoriteDao.getAllFavoritesMovies(userId);
		List<Movie> movie=new ArrayList<Movie>();
		for (Integer i : list) {
			Movie movie1=movieDao.findById(i).get();
			movie.add(movie1);
		}
		return movie;
	}

	@Transactional
	public void removeFavoritesMovie(int userId, int movieId) {
		favoriteDao.removeFavoritesMovie(userId, movieId);
	}

}
