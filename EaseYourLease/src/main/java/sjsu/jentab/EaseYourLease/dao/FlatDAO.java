package sjsu.jentab.EaseYourLease.dao;

import org.springframework.data.repository.CrudRepository;
import sjsu.jentab.EaseYourLease.model.Apartment;
import sjsu.jentab.EaseYourLease.model.Flat;

import java.util.List;

public interface FlatDAO extends CrudRepository<Flat,Integer> {
    public List<Flat> findByApartmentId(Integer apartmentID);

}
