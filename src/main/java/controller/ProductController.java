package controller; 

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.validation.Valid;
import javax.servlet.ServletContext;

import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.hibernate.engine.jdbc.LobCreator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import model.Product;
import model.ProductDAO;
import model.Supplier;

@Controller
public class ProductController {
	
	SessionFactory sessionfactory;
	
	@RequestMapping(value="/productPage",method=RequestMethod.GET)
	public String productsPage() {
		return "product";
	}
	
	@RequestMapping(value="/success", method=RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute("product1")Product p,HttpServletRequest request,
            @RequestParam CommonsMultipartFile fileUpload,@Valid @ModelAttribute("supplier")Supplier s,BindingResult result)
	{
		if(result.hasErrors())
		{
			return "product";
		}
		
		System.out.println("Saving file: " + fileUpload.getOriginalFilename());
		ProductDAO pd = new ProductDAO();
		p.setpimg(fileUpload.getOriginalFilename());
		p.setimgdata(fileUpload.getBytes());
		//String b1 = fileUpload.getBytes().toString();
		//p.setimgdata(b1);
		p.setSupplier(s);
		boolean b = pd.insertProduct(p);
		return "success";
	}
	
	
	@ResponseBody
	@RequestMapping(value="/products", method=RequestMethod.GET)
	
	public List<Product> getProducts()
	{
		ProductDAO pd = new ProductDAO();
		List<Product> lp = null;
		try
		{
			lp = pd.getProducts();
			
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return lp;
	}
	
	
	@RequestMapping(value="/listview", method=RequestMethod.GET)
	public String listProductView()
	{
		return "listproducts";
	}
	
}