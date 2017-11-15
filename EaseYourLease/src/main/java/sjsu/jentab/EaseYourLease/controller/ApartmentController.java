package sjsu.jentab.EaseYourLease.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ApartmentController {
	
	@RequestMapping(value = "/viewapartments", method = RequestMethod.GET)
	public String apartmentPage(ModelMap model) {
		return "viewapartments";
	}
	
	@RequestMapping(value = "/addapartments", method = RequestMethod.GET)
	public String addApartmentPage(ModelMap model) {
		return "addapartments";
	}

}
