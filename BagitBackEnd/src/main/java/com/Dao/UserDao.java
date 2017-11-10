package com.Dao;
import com.model.*;


public interface UserDao {
public void insertUser(User user);
public User getUser(String userEmail);
}
