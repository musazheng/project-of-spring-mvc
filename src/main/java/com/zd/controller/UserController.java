package com.zd.controller;

import com.zd.entity.User;
import com.zd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by zd on 2017/3/3.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    public UserService userService;

    @RequestMapping("/register")
    public String register(User user, ModelMap model){
         userService.add(user);
         return "user/userList";
    }

    @RequestMapping("/delete")
    public String deleteUser(HttpServletRequest req){
        String userId=req.getParameter("userId");
        userService.delUser(userId);
        return "";
    }

    @RequestMapping("/getModifyUserPage")
    public String modifyUser(HttpServletRequest req){
        String userId=req.getParameter("userId");
        User user=userService.getUserById(userId);
        return "/user/modifyUser";
    }

    @RequestMapping("/list")
    public  String getUserList(ModelMap model){
        model.addAttribute("userList", userService.getAllUser());
        return "/user/userList";
    }
}
