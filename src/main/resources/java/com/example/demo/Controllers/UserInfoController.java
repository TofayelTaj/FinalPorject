package com.example.demo.Controllers;

import com.example.demo.Entitys.User;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
@Service
public class UserInfoController {


   // ...........GET CURRENT USER ID BY SESSION..............
    public  int getUserId(HttpServletRequest request){
        var session = request.getSession();
        User user = (User) session.getAttribute("currentUser");
        return user.getUserId();
    }
}

