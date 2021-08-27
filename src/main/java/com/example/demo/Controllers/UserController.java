package com.example.demo.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {


    //.........User Logout System........................
    @RequestMapping("/logout")
    public String logoutSystem(HttpSession session){
        session.removeAttribute("currentUser");
        return "redirect:../";
    }

    //..............User Home Page.......................
    @RequestMapping("/home")
    public String userHome(){
        return "home";
    }

    //.............User Profile page...................
    @RequestMapping("/profile")
    public String userProfile(){
        return "profile";
    }


}
