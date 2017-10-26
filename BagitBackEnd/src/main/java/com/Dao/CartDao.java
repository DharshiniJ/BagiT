package com.Dao;

import java.util.List;

import com.model.Cart;


public interface CartDao
{
	public void insert(Cart cart);
	public List<Cart> findCartById(String userId);
	public Cart getCartById(int cartId,String userEmail);
	public void deleteCart(int cartId);
	public void updateCart(Cart cr);
	
	
}

