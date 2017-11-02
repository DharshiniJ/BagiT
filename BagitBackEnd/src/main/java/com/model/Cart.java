/*package com.model;

import java.io.Serializable;

import javax.persistence.*;

import org.springframework.stereotype.Component;
@Component
@Entity


public class Cart implements Serializable
{

	private static final long serialVersionUID = 1L;
	
	
	@Id
	@GeneratedValue
	private int cartId;
	private int cartProductId;
	private String cartProductName;
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="email")
	private User cartUserDetails;
	private double cartPrice;
	private int cartQnty;
	private String cartImg;
	public Cart(int cartId,int cartProductId, User cartUserDetails,double cartPrice,int cartQnty)
	{
		this.cartId=cartId;
		this.cartProductId=cartProductId;
		this.cartUserDetails=cartUserDetails;
		this.cartPrice=cartPrice;
		this.cartQnty=cartQnty;
		
	}
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getCartProductId() {
		return cartProductId;
	}
	public void setCartProductId(int cartProductId) {
		this.cartProductId = cartProductId;
	}
	public String getCartProductName() {
		return cartProductName;
	}
	public void setCartProductName(String cartProductName) {
		this.cartProductName = cartProductName;
	}
	public User getCartUserDetails() {
		return cartUserDetails;
	}
	public void setCartUserDetails(User cartUserDetails) {
		this.cartUserDetails = cartUserDetails;
	}
	public Double getCartPrice() {
		return cartPrice;
	}
	public void setCartPrice(Double cartPrice) {
		this.cartPrice = cartPrice;
	}
	public int getCartQnty() {
		return cartQnty;
	}
	public void setCartQnty(int cartQnty) {
		this.cartQnty = cartQnty;
	}
	public String getCartImg() {
		return cartImg;
	}
	public void setCartImg(String cartImg) {
		this.cartImg = cartImg;
	}
	
	
	

}*/
