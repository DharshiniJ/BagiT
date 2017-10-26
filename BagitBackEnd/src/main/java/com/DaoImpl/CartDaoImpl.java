package com.DaoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Dao.CartDao;
import com.model.Cart;

@Repository
public class CartDaoImpl implements CartDao {
	@Autowired
	SessionFactory sessionFac;
	public CartDaoImpl(SessionFactory sessionFac)
	{
		this.sessionFac=sessionFac;
		
	}
	
	public void insert(Cart cart) 
	{
		Session session=sessionFac.openSession();
		session.beginTransaction();
		session.persist(cart);
		session.getTransaction().commit();
		
		
	}
	@SuppressWarnings({ "unchecked", "deprecation" })
	public List<Cart> findCartById(String userId)
	{
		Session session=sessionFac.openSession();
		List<Cart> cr=null;
		try
		{
			session.beginTransaction();
			cr=(List<Cart>)session.createQuery("from Cart where email=:email and cartProductId=:Id").list();
			session.getTransaction().commit();
			
			
		}
		catch(HibernateException e)
		{
			session.getTransaction().rollback();
			
		}
		return cr;
	}
	
public Cart getCartById(int cartId,String userEmail) 
{
	Session session=sessionFac.openSession();
	Cart cr=null;
	try
	{
		session.beginTransaction();
		cr=(Cart)session.createQuery("from Cart where email=:email and cartProductId=:id").setString("email", userEmail).setInteger("id", cartId).getSingleResult();
		session.getTransaction().commit();	
			
}
	catch(HibernateException e)
	{
		session.getTransaction().rollback();
		
	}
	return cr;
}
public void deleteCart(int cartId)
{
	Session session=sessionFac.openSession();
session.beginTransaction();
Cart cr=(Cart)session.get(Cart.class, cartId);
session.delete(cr);
session.getTransaction().commit();
}
public void updateCart(Cart cr)
{
	Session session=sessionFac.openSession();
	session.beginTransaction();
	session.update(cr);
	session.getTransaction().commit();
	
}
}