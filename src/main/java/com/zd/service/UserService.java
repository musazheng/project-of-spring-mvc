package com.zd.service;

import com.zd.entity.User;

import java.util.List;

/**
 * Created by zd on 2017/3/12.
 */
public interface UserService {
   public void add(User user);

   public void delUser(String userId);

   public List<User> getAllUser();

   public void modUser(User user);

   public User getUserById(String userId);
}

