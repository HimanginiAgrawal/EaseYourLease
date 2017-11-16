package sjsu.jentab.EaseYourLease.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import sjsu.jentab.EaseYourLease.model.Apartment;
import sjsu.jentab.EaseYourLease.model.Flat;
import sjsu.jentab.EaseYourLease.service.ApartmentService;
import sjsu.jentab.EaseYourLease.service.FlatService;

import java.util.List;

@Controller
public class FlatController {


	@Autowired
	private FlatService flatService;

	@RequestMapping(value = "/saveflat", method = RequestMethod.POST)
	public String flatSave(@RequestBody Flat flat) {
		return flatService.flatSave(flat);
	}

	@RequestMapping(value = "/viewflat", method = RequestMethod.POST)
	public List<Flat> flatslist(@RequestParam Integer apartmentId) {
		return flatService.flatslist(apartmentId);
	}

	@RequestMapping(value = "/viewflattype", method = RequestMethod.GET)
	public String viewflattypePage(@RequestParam("apartmentId")Integer apartmentId,ModelMap model) {
		model.put("flats",flatService.flatslist(apartmentId));
		return "viewflattype";
	}





//	@RequestMapping(value = "/viewflattype", method = RequestMethod.GET)
//	public String viewflattypePage(ModelMap model) {
//		model.put("flats",flatService.flatslist(1));
//		return "viewflattype";
//	}


	
}
