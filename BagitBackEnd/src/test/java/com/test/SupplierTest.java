package com.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Dao.SupplierDao;
import com.model.Supplier;




public class SupplierTest {
	static SupplierDao supplierDAO;

	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext ac =new AnnotationConfigApplicationContext();
		ac.scan("com");
		ac.refresh();
		/*SessionFactory sessionFactory=(SessionFactory)ac.getBean("hiberConfig.class");*/
		supplierDAO= (SupplierDao)ac.getBean("supplierDAO");
		
		
	}
	
	@Test
	public void addSupplierTest()
	{
		Supplier supplier=new Supplier();
		supplier.setSupId(1002);
		supplier.setSupName(" Jute");
		supplier.setSupDesc("Stylish bags");
		assertTrue(supplierDAO.addSupplier(supplier));
	}
	@Ignore
	@Test
	public void updateSupplierTest()
	{
		Supplier supplier=new Supplier();
		supplier.setSupId(1003);
		supplier.setSupName("Nylons");
		supplier.setSupDesc("Fashion and Style at lowest price near you");
		assertTrue(supplierDAO.updateSupplier(supplier));
	}
	@Ignore
	@Test
	public void deleteSupplierTest()
	{
		Supplier supplier=new Supplier();
		supplier.setSupId(1002);
		assertTrue(supplierDAO.deleteSupplier(supplier));
	}
	
	@Ignore
	@Test
	public void retrieveSupplierTest()
	{
		List<Supplier> listSupplier=supplierDAO.retriveSupplier();
		assertNotNull("Problen in Retriving",listSupplier);
		this.show(listSupplier);
		
	}
	
	public void show(List<Supplier> listSupplier)
	{
		for(Supplier supplier:listSupplier)
		{
			System.out.println("Supplier Id:"+supplier.getSupId());
			System.out.println("Supplier Name:"+supplier.getSupName());
		}
	}
	@Ignore
	@Test
	public void getSupplierTest()
	{
		Supplier supplier=supplierDAO.getSupplier(1002);
		assertNotNull("Problem in Getting:",supplier);
		System.out.println("Supplier ID:"+supplier.getSupId());
		System.out.println("Supplier Name:"+supplier.getSupName());
	}
	
	
	

	

}
