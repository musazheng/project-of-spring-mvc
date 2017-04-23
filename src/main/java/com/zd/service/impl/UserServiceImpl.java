package com.zd.service.impl;

import com.zd.dao.UserDao;
import com.zd.entity.User;
import com.zd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zd on 2017/3/12.
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public void add(User user) {
        if (user!=null){
            userDao.save(user);
        }
    }

    public void delUser(String userId) {
        userDao.delUserbyId(userId);
    }

    public List<User> getAllUser() {
        return userDao.getAllUser();
    }

    public void modUser(User user) {
        if(user!=null){
            userDao.updateUser(user);
        }
    }

    public User getUserById(String userId) {
        return userDao.getUserById(userId);
    }
}
