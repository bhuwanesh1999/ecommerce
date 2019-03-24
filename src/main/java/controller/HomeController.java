package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
		@RequestMapping(value="/", method=RequestMethod.GET)
		public String homePage()
		{
			return "home";
		}
		
		@RequestMapping(value="/saveimage", method=RequestMethod.GET)
		public String saveimagepage()
		{
			return "saved";
		}
		
		/*@RequestMapping(value="/fail")
		public String error()
		{
			return "fail";
		}
		
		@RequestMapping(value="/logout")
		public String logout()
		{
			return "login";
		}*/
}