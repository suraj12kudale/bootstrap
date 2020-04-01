package com.cognizant.moviecruiser.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.moviecruiser.model.Favorites;

@Repository
public interface FavoritesDao extends CrudRepository<Favorites,String> {

//	@Query("insert into favorites values(?1,?2)")
//	public void addFavoritesMovie(int userId, int movieId);
//
	@Query("select f.mv_id from Favorites f where us_id=?1")
	public List<Integer> getAllFavoritesMovies(int userId) throws FavoritesEmptyException;
//
	@Modifying
	@Query("delete from Favorites f where f.us_id=?1 and f.mv_id=?2")
    public void removeFavoritesMovie(int userId, int movieId);
}
