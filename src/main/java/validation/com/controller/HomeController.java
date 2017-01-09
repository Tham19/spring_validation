package validation.com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import validation.com.entity.User;

@Controller
public class HomeController {

	@Autowired
	MessageSource messageSource;
	
	Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "index";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String initRegisterUser(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
			ModelMap model) {
		model.addAttribute("user", new User());
		logger.info("Init user form");
		logger.debug("Init user form");
		return "home";
	}

	@RequestMapping(value = "/registerUser", method = RequestMethod.POST)
	public String registerUser(@Valid User user, BindingResult result, Model model) {
		model.addAttribute("user", user);
		// handle error
		if (result.hasErrors()) {
			logger.info("Got Error");
			logger.debug("Error when input not correct format file data");
			return "home";
		} else {
			// insert into database
			logger.info("Success");
			logger.debug("Register success");
		}
				
		return "register_success";
	}
}
