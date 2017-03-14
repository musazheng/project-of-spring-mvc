package com.zd.service.impl;

import com.zd.dao.UserDao;
import com.zd.entity.User;
import com.zd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by zd on 2017/3/12.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public boolean add(User user) {
        boolean addState=false;
        if (user!=null){
            addState=userDao.save(user);
        }
        return false;
    }
}
