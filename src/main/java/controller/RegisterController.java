package controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Register;
import model.RegisterDAO;

@Controller
public class RegisterController {
	
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String userPage() {
		return "register";
	}
	
	@RequestMapping(value="/Success", method=RequestMethod.POST)
	public String userSuccess(@Valid @ModelAttribute("user1")Register r)
	{
		RegisterDAO ud = new RegisterDAO();
		ud.insertuser(r);
		return "success";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String loginpage() {
		return "login";
	}
	
	@RequestMapping(value="/SUccess", method=RequestMethod.POST)
	public String checkuserlogin(@Valid @ModelAttribute("login1")Register r)
	{
		RegisterDAO rd = new RegisterDAO();
		boolean b = rd.checkuser(r);
		if(b) {
			return "login_success";
		}
		else {
			return "fail";
		}
	}

}
