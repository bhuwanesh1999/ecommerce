package controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Product;
import model.Supplier;
import model.SupplierDAO;

@Controller
public class SupplierController {

	
	@RequestMapping(value="/addSupplier", method=RequestMethod.POST)
	public String AddSupplier(@Valid @ModelAttribute("supplier1")Supplier s, BindingResult result)
	{
		System.out.println("check1");
		SupplierDAO sd = new SupplierDAO();
		sd.insertSupplier(s);
		System.out.println("check2");
		return "success";
		
	}
	
	@RequestMapping(value="/addsupplierpage", method=RequestMethod.GET)
	public String addSupplierPage()
	{
		return "addsupplier";
	}
	
}