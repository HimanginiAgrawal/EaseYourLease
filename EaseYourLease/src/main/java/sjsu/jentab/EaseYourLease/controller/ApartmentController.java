package sjsu.jentab.EaseYourLease.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import sjsu.jentab.EaseYourLease.dao.impl.ApartmentDAOImpl;
import sjsu.jentab.EaseYourLease.model.Apartment;
import sjsu.jentab.EaseYourLease.service.ApartmentService;

import java.util.List;

@Controller
public class ApartmentController {

	@Autowired
	private ApartmentService apartmentService;

	@RequestMapping(value ="/listapartments",method = RequestMethod.GET)
	public List<Apartment> apartmentList() {
		return apartmentService.apartmentList();
	}

	@RequestMapping(value = "/saveapartments", method = RequestMethod.POST)
	public String apartmentSave(@RequestBody Apartment apartment) {
		return apartmentService.apartmentSave(apartment);
	}

	
	@RequestMapping(value = "/viewapartments", method = RequestMethod.GET)
	public String apartmentPage(ModelMap model) {
		model.put("apartments",apartmentService.apartmentList());
		return "viewapartments";
	}

	
	@RequestMapping(value = "/addapartments", method = RequestMethod.GET)
	public String addApartmentPage(ModelMap model) {
		return "addapartments";
	}

}
