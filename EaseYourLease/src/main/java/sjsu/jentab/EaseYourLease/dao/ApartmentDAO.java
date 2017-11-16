package sjsu.jentab.EaseYourLease.dao;

import org.springframework.data.repository.CrudRepository;
import sjsu.jentab.EaseYourLease.model.Apartment;

public interface ApartmentDAO extends CrudRepository <Apartment,Integer> {
	

}
