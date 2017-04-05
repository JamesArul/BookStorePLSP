package com.jpro.philosophibackend.testcase;

import static org.junit.Assert.*;

import java.util.Date;
import java.util.Set;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.jpro.philosophibackend.dao.CartDAO;
import com.jpro.philosophibackend.dao.ProductDAO;
import com.jpro.philosophibackend.domain.Address;
import com.jpro.philosophibackend.domain.Cart;
import com.jpro.philosophibackend.domain.Product;
import com.jpro.philosophibackend.domain.ProductOfCart;

import junit.framework.Assert;

public class CartTestCase {
	
	@Autowired
	private static Cart cart;
	
	@Autowired
	private static CartDAO cartDAO;
	
	@Autowired
	private static Product product;
	
	@Autowired
	private static ProductDAO productDAO;
	
	@BeforeClass
	public static void init()//give any name for method
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.jpro.philosophibackend");
		context.refresh();
		cart=(Cart) context.getBean("cart");
		cartDAO =(CartDAO) context.getBean("cartDAO");
		product=(Product) context.getBean("product");
		productDAO =(ProductDAO) context.getBean("productDAO");
	}

	/*
	@Test
	public void addCartTestCase()
	{
		cart.setUserId("Dhinesh27");
		cart.setDelivery_name("Dhinesh");
		cart.setUser_contact(9787325454L);
		cart.setTotalCost(325);
		Address addr=new Address();
		addr.setStreet("N0: 7, Ghandhi Street");
		addr.setCity("Chennai");
		addr.setState("Tamil Nadu");
		addr.setPincode(600050);
		cart.setBillingAddress(addr);
		cart.setShippingAddress(addr);
		Date date=new Date();
		cart.setDateAdded(date);
		cart.setCartStatus("Processing");
		product=productDAO.getProductById("TS-SAT001");
		ProductOfCart productInCart=new ProductOfCart();
		productInCart.setProductId(product.getProductId());
		productInCart.setProductName(product.getProductName());
		productInCart.setProductCost(product.getProductCost());
		productInCart.setProductQuantity(2);
		cart.getProductOfCart().add(productInCart);
		product.setProductQuantity(product.getProductQuantity()-productInCart.getProductQuantity());
		productDAO.updateProduct(product);
		boolean flag=cartDAO.saveCart(cart);
		Assert.assertEquals("addCartTestCase", true, flag);
	}
	*/
	
	@Test
	public void editCartTestCase()
	{
		boolean flag=cartDAO.removeProductFromCart("TS-SAT001", 2);
		Assert.assertEquals("editCartTestCase", true, flag);
	}
}
