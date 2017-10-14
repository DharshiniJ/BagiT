package com.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Dao.CategoryDao;
import com.model.Category;

public class CategoryTest {
	static CategoryDao categoryDAO;

	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext ac =new AnnotationConfigApplicationContext();
		ac.scan("com");
		ac.refresh();
		/*SessionFactory sessionFactory=(SessionFactory)ac.getBean("hiberConfig.class");*/
		categoryDAO= (CategoryDao)ac.getBean("categoryDAO");
		
		
	}
	
	@Test
	public void addCategoryTest()
	{
		Category category=new Category();
		category.setCatId(1003);
		category.setCatName("Nylon");
		category.setCatDesc("Stylish bags");
		assertTrue(categoryDAO.addCategory(category));
	}
	@Ignore
	@Test
	public void updateCategoryTest()
	{
		Category category=new Category();
		category.setCatId(1004);
		category.setCatName("Nylon");
		category.setCatDesc("Fashion and Style at lowest price near you");
		assertTrue(categoryDAO.updateCategory(category));
	}
	@Ignore
	@Test
	public void deleteCategoryTest()
	{
		Category category=new Category();
		category.setCatId(1002);
		assertTrue(categoryDAO.deleteCategory(category));
	}
	
	@Ignore
	@Test
	public void retrieveCategoryTest()
	{
		List<Category> listCategory=categoryDAO.retriveCategory();
		assertNotNull("Problen in Retriving",listCategory);
		this.show(listCategory);
		
	}
	
	public void show(List<Category> listCategory)
	{
		for(Category category:listCategory)
		{
			System.out.println("Category Id:"+category.getCatId());
			System.out.println("Category Name:"+category.getCatName());
		}
	}
	@Ignore
	@Test
	public void getCategoryTest()
	{
		Category category=categoryDAO.getCategory(1002);
		assertNotNull("Problem in Getting:",category);
		System.out.println("Category ID:"+category.getCatId());
		System.out.println("Category Name:"+category.getCatName());
	}
	
	
	

	

}
