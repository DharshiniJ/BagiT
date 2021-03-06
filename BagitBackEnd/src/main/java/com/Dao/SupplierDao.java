package com.Dao;

import java.util.List;

import com.model.Supplier;

public interface SupplierDao {
	public boolean addSupplier(Supplier supplier);
	public List<Supplier> retriveSupplier();
	public boolean deleteSupplier(Supplier supplier);
	public Supplier getSupplier(int supId);
	public boolean updateSupplier(Supplier supplier);
	

}
