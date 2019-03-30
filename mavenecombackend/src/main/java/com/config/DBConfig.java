package com.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.dao.CartDAO;
import com.dao.CategoryDAO;

import com.dao.PaymentDAO;
import com.dao.ProductDAO;
import com.dao.SupplierDAO;
import com.dao.UserDetailDAO;
import com.model.Cart;
import com.model.Category;

import com.model.Payment;
import com.model.Product;
import com.model.Supplier;
import com.model.UserDetail;

@Configuration
@ComponentScan("com.model.*")
@EnableTransactionManagement
public class DBConfig
{
	 @Bean(name="dataSource")
	 public DataSource getH2DataSource()
     {
     	System.out.println("Starting of the method getH2DataSource");
     	DriverManagerDataSource dataSource = new DriverManagerDataSource();
     	dataSource.setDriverClassName("org.h2.Driver");
     	dataSource.setUrl("jdbc:h2:tcp://localhost/~/test");
     	dataSource.setUsername("sa");
     	dataSource.setPassword("");
     	System.out.println("Data source creation");
     	return dataSource;
     }
	 
	 
	 @Autowired
     @Bean(name="sessionFactory")
	 public SessionFactory getSessionFactory(DataSource dataSource)
     {  
     	System.out.println("------Hibernate Properties----");
     	Properties prop = new Properties();
     	prop.setProperty("hibernate.hbm2ddl.auto", "update");
     	prop.put("hibernate.show_sql", "true");
     	prop.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
     	System.out.println("-----Hibernate properties created----");
     	
     	System.out.println("----Local session factory builder object creation----");
     	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(getH2DataSource());
     	sessionBuilder.addProperties(prop);
     	System.out.println("-----Factory builder object created----");
     	
     	sessionBuilder.addAnnotatedClass(Category.class);
     	sessionBuilder.addAnnotatedClass(Product.class);
     	sessionBuilder.addAnnotatedClass(Supplier.class);
     	sessionBuilder.addAnnotatedClass(UserDetail.class);
     	sessionBuilder.addAnnotatedClass(Cart.class);
    	
    	sessionBuilder.addAnnotatedClass(Payment.class);


     	System.out.println("Session factory object creation");
     	SessionFactory sessionFactory = sessionBuilder.buildSessionFactory();
     	System.out.println("Session factory object created");
     	return sessionFactory;
     	
     }
	 
	 @Autowired 
     @Bean(name="txManager")
     public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory)
     {
     	HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
     	
     	return transactionManager;
     }
     
     @Autowired
     @Bean(name="categoryDAO")
 	public CategoryDAO getCategoryDAO(SessionFactory sessionFactory)
 	{
 		System.out.println("-- CategoryDAO Object Creation--");
 		return new CategoryDAO(sessionFactory);
 		
 	}
     
     @Autowired
     @Bean(name="productDAO")
     public ProductDAO getProductDAO(SessionFactory sessionFactory)
     {
     	System.out.println("-- ProductDAO Object Creation--");
 		return new ProductDAO(sessionFactory);
     }
     
     @Autowired
     @Bean(name="supplierDAO")
     public SupplierDAO getSupplierDAO(SessionFactory sessionFactory)
     {
     	System.out.println("-- SupplierDAO Object Creation--");
 		return new SupplierDAO(sessionFactory);
     }
     
     @Autowired
     @Bean(name="userDetailDAO")
     public UserDetailDAO getUserDetailDAO(SessionFactory sessionFactory)
     {
     	System.out.println("-- UserDetailDAO Object Creation--");
 		return new  UserDetailDAO(sessionFactory);
     }
     
     @Autowired
     @Bean(name="cartDAO")
     public CartDAO getCartDAO(SessionFactory sessionFactory)
     {
     	System.out.println("-- cartDAO Object Creation--");
 		return new  CartDAO(sessionFactory);
     }
     
   
     
     @Autowired
     @Bean(name="paymentDAO")
     public PaymentDAO getPaymentDAO(SessionFactory sessionFactory)
     {
    	 System.out.println("-----PaymentDAO Object Creation------");
    	 return new PaymentDAO(sessionFactory);
    	 	
     }
     

}