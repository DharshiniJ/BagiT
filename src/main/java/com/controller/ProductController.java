package com.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.LinkedHashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.Bagit.Exception.ProductNotFoundException;
import com.Dao.CategoryDao;
import com.Dao.ProductDao;
import com.Dao.SupplierDao;
import com.model.Category;
import com.model.Product;
import com.model.Supplier;




@Controller
public class ProductController {
	@Autowired
	ProductDao productDAO;
	@Autowired
	CategoryDao categoryDAO;
	@Autowired
	SupplierDao supplierDAO;
	
	@RequestMapping(value="/admin/Product",method=RequestMethod.GET)
	public String showProduct(Model m)
	{
		Product product=new Product();
		m.addAttribute(product);
		List<Product> listProduct=productDAO.retriveProduct();
		m.addAttribute("productList",listProduct);
		m.addAttribute("categoryList",this.getCategories());
		m.addAttribute("supplierList",this.getSuppliers());

		return "ProductA";
		}
	public LinkedHashMap<Integer,String> getCategories()
	{
		List<Category> listCategories =categoryDAO.retriveCategory();
		LinkedHashMap<Integer,String> categoriesList=new LinkedHashMap<Integer,String>();
		for(Category category:listCategories) {
			categoriesList.put(category.getCatId(), category.getCatName());
		}
		return categoriesList;
	}
	
	public LinkedHashMap<Integer,String> getSuppliers()
	{
		List<Supplier> listSuppliers =supplierDAO.retriveSupplier();
		LinkedHashMap<Integer,String> suppliersList=new LinkedHashMap<Integer,String>();
		for(Supplier supplier:listSuppliers) {
			suppliersList.put(supplier.getSupId(), supplier.getSupName());
		}
		return suppliersList;
	}
	
	@RequestMapping(value="/admin/AddProduct",method=RequestMethod.POST)
	public String addProduct(@ModelAttribute("product")Product product,@RequestParam("pimage")MultipartFile fileDetail,Model m)
	{
		productDAO.addProduct(product);
		String path="E:\\Project\\Bagit\\src\\main\\webapp\\resources\\pimages\\";
		String totalFilePath=path+String.valueOf(product.getProductId())+".jpg";
		File productImage=new File(totalFilePath);
		if(!fileDetail.isEmpty())
		{
			try
			{
				byte fileBuffer[]=fileDetail.getBytes();
				FileOutputStream fos=new FileOutputStream(productImage);
				BufferedOutputStream bs=new BufferedOutputStream(fos);
				bs.write(fileBuffer);
				bs.close();
			}
			catch(Exception e)
			{
				m.addAttribute("error", e.getMessage());
			}
		}
		else
		{
			m.addAttribute("error", "Problem in file uploading");
		}
	 List<Product> listProduct=productDAO.retriveProduct();
		m.addAttribute("productList",listProduct);
		Product product1=new Product();
		m.addAttribute(product1);
		m.addAttribute("categoryList",this.getCategories());
		m.addAttribute("supplierList",this.getSuppliers());
		return "ProductA";
	 
	}
	
	@RequestMapping(value="/admin/updateProduct/{productId}", method=RequestMethod.GET)
	public String updateProduct(@PathVariable("productId")int productId, Model m)
	{
		
		Product product = productDAO.getProduct(productId);
		m.addAttribute(product);
		List<Product> listProduct = productDAO.retriveProduct();
		m.addAttribute("productList",listProduct);
		m.addAttribute("categoryList",this.getCategories());
		m.addAttribute("supplierList",this.getSuppliers());
		return "UpdateProduct";
	}
	
	@RequestMapping(value="/admin/UpdateProduct", method=RequestMethod.POST)
	public String updateMyProduct(@ModelAttribute("product")Product product, @RequestParam("pimage")MultipartFile fileDetail, Model m)
	{
		
		productDAO.updateProduct(product);
		Product product1 = new Product();
		m.addAttribute(product1);
		String path = "E:\\Project\\Bagit\\src\\main\\webapp\\resources\\pimages\\";
		String totalFilePath = path+String.valueOf(product.getProductId())+".jpg";
		File productImage = new File(totalFilePath);
		if(!fileDetail.isEmpty())
		{
			try
			{
				byte fileBuffer[] = fileDetail.getBytes();
				FileOutputStream fos = new FileOutputStream(productImage);
				BufferedOutputStream bs = new BufferedOutputStream(fos);
				bs.write(fileBuffer);
				bs.close();
			}
			catch(Exception e)
			{
				m.addAttribute("error", e.getMessage());
			}
		}
		else
		{
			m.addAttribute("error", "Problem in file uploading.");
		}
		List<Product> listProduct = productDAO.retriveProduct();
		m.addAttribute("productList",listProduct);
		m.addAttribute("categoryList",this.getCategories());
		m.addAttribute("supplierList",this.getSuppliers());
		return "ProductListA";
	}
	
	@RequestMapping(value="/admin/deleteProduct/{productId}",method=RequestMethod.GET)
	public String deleteProduct(@PathVariable("productId")int productId,Model m)
	{
		Product product=productDAO.getProduct(productId);
		productDAO.deleteProduct(product);
		List<Product> listProduct=productDAO.retriveProduct();
		m.addAttribute("productList",listProduct);
		return "ProductListA";
		
		
	}
	
	@RequestMapping(value="/admin/productlist")
	public String showProducts(Model m)
	{
		List<Product> listProduct=productDAO.retriveProduct();
		m.addAttribute("productList",listProduct);
		return "ProductListA";
	}
	
	@RequestMapping(value="ProductDesc/{productId}")
	public String showProductDesc(@PathVariable("ProductId")int productId, Model m)
	{
		Product product=productDAO.getProduct(productId);
		m.addAttribute("product",product);
		return "ProductDesc";
	}

	
	
	
	@RequestMapping(value="/AllProducts",method=RequestMethod.GET)
	public String showAllProducts(Model m)
	{
		Product product=new Product();
		m.addAttribute(product);
		List<Product> listProduct=productDAO.retriveProduct();
		m.addAttribute("productList",listProduct);
		int catId=0;
		m.addAttribute("catId", catId);
		Category category=new Category();
		m.addAttribute(category);
		m.addAttribute("categoryList",this.getCategories());
		m.addAttribute("supplierList",this.getSuppliers());

		return "ProductDesc";
		}
	
	@RequestMapping(value="/categoryProducts",method=RequestMethod.POST)
	public String categoryProduct(HttpServletRequest req,Model m)
	{
		int catId=0;
		catId=Integer.valueOf(req.getParameter("catId"));
		
		Product product=new Product();
		m.addAttribute(product);
		
		
		m.addAttribute("catId", catId);
		Category category=new Category();
		if(catId==0)
		{
			List<Product> listProduct=productDAO.retriveProduct();
			m.addAttribute("productList",listProduct);
		}
		else
		{
			List<Product> listProduct=productDAO.getCategoryProduct(catId);
			m.addAttribute("productList",listProduct);
		}
		m.addAttribute(category);
		m.addAttribute("categoryList",this.getCategories());
		m.addAttribute("supplierList",this.getSuppliers());

		return "ProductDesc";
		
	}
	
	
	
	@RequestMapping(value="/ProductDetail/{productId}",method=RequestMethod.GET)
	public String showProductDetail(@PathVariable("productId")int productId, Model m) throws ProductNotFoundException
	{

		Product product=productDAO.getProduct(productId);
		if(product == null) throw new ProductNotFoundException();
		m.addAttribute(product);
		/*int catId=product.getCatId();
		Category category=categoryDAO.getCategory(catId);
		m.addAttribute(category);
		int supId=product.getSupId();
		Supplier supplier=supplierDAO.getSupplier(supId);
		m.addAttribute(supplier);*/
	return "ProductDetail";
	}
}
