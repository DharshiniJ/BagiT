package com.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Dao.ProductDao;
import com.Dao.SupplierDao;
import com.model.Product;
import com.model.Supplier;

public class ProductTest {
	static ProductDao productDAO;
	
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext ac =new AnnotationConfigApplicationContext();
		ac.scan("com");
		ac.refresh();
		/*SessionFactory sessionFactory=(SessionFactory)ac.getBean("hiberConfig.class");*/
		productDAO= (ProductDao)ac.getBean("productDAO");
		
		
	}
	
	@Test
	public void addProductTest()
	{
		Product product=new Product();
		product.setProductId(1003);
		product.setProductName("Nylon");
		product.setProductDesc("Stylish bags");
		product.setStock(30);
		product.setPrice(3000);
		product.setCatId(1003);
		product.setSupId(1003);
		assertTrue(productDAO.addProduct(product));
	}
	@Ignore
	@Test
	public void updateProductTest()
	{
		Product product=new Product();
		product.setProductId(1002);
		product.setProductName("Nylons");
		product.setProductDesc("Fashion and Style at lowest price near you");
		assertTrue(productDAO.updateProduct(product));
	}
	@Ignore
	@Test
	public void deleteProductTest()
	{
		Product product=new Product();
		product.setProductId(1002);
		assertTrue(productDAO.deleteProduct(product));
	}
	
	@Ignore
	@Test
	public void retrieveProductTest()
	{
		List<Product> listProduct=productDAO.retriveProduct();
		assertNotNull("Problen in Retriving",listProduct);
		this.show(listProduct);
		
	}
	
	public void show(List<Product> listProduct)
	{
		for(Product product:listProduct)
		{
			System.out.println("Product Id:"+product.getProductId());
			System.out.println("Product Name:"+product.getProductName());
		}
	}
	@Ignore
	@Test
	public void getProductTest()
	{
		Product product=productDAO.getProduct(1002);
		assertNotNull("Problem in Getting:",product);
		System.out.println("Product ID:"+product.getProductId());
		System.out.println("Product Name:"+product.getProductName());
	}
	
	

	
}
