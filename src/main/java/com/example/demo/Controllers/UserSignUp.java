package com.example.demo.Controllers;

import com.example.demo.Entitys.User;
import com.example.demo.Repositories.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;


@Controller
public class UserSignUp {

    @Autowired
    private UserRepo uRepo;

    private  HttpSession session;


    //............SIGN UP  PAGE.......................
    @RequestMapping("/register")
    public String signupPage() {
        return "signup";
    }

    //.............INDEX PAGE ........................
    @RequestMapping("/logIn")
    public  String indexPage(){
        return "index";
    }

    //............SIGN UP NEW USERS...............................
    @RequestMapping("/signup")
    public String signUp(@Valid @ModelAttribute("user") User user, BindingResult result, Model model){


        if(result.hasErrors()){
            model.addAttribute("errors", "Failed");
            return "signup";
        }
      if(uRepo.save(user) != null){
          model.addAttribute("regSuccess", "success");

      }
        return "signup";
    }
    //............SIGN UP NEW USERS...............................


    //.................USER LOGIN ................................

    @RequestMapping("/login")
    public String userLoginService(HttpServletRequest request,@Valid @RequestParam("userEmail") String userEmail, @RequestParam("userPassword") String userPssword, Model model){
        session = request.getSession();
        User u =uRepo.findByEmailAndPssword(userEmail, userPssword);

        if(u != null && u.getUserEmail() != null && u.getUserPassword() != null){
            //u.setUserPassword(null);
            session.setAttribute("currentUser", u );
            System.out.println("user login success");
        }else{
            model.addAttribute("faildMsg", "Login Faild");
            System.out.println("log in failed");
            return  "index";
        }
        return "redirect:/user/home";
    }

    //...................USER LOGIN.......................
}
