package com.zd.controller;

import com.zd.entity.User;
import com.zd.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by zd on 2017/3/3.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @RequestMapping("/register")
    public String register(User user, ModelMap model){
         String msg= UserService.add(user)?"success":"false";
         return "user/registeUSer";
    }
}
