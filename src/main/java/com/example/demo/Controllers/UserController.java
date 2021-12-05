package com.example.demo.Controllers;

import com.example.demo.Entitys.*;
import com.example.demo.Repositories.AssetsRepo;
import com.example.demo.Repositories.SaleRepo;
import com.example.demo.Repositories.UnpaidSaleRepo;
import com.example.demo.Repositories.WithdrawRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController{



    @Autowired
    private AssetsRepo assetsRepo;

    @Autowired
    private SaleRepo saleRepo;

    @Autowired
    private UnpaidSaleRepo unpaidSaleRepo;

    @Autowired
    private WithdrawRepo withdrawRepo;



    //.........User Logout System........................
    @RequestMapping("/logout")
    public String logoutSystem(HttpSession session){
        session.removeAttribute("currentUser");
        return "redirect:../";
    }




    //..............User Home Page.......................
    @RequestMapping("/home")
    public String userHome(Model model, @RequestParam String date, HttpServletRequest request){

        date = date.replace('-', '/');

        User u = (User)request.getSession().getAttribute("currentUser");

        List<AssetsEntity> aeList = assetsRepo.getIdAndDate(u.getUserId(), date);
        List<SaleEntity> seList = saleRepo.getIdAndDate(u.getUserId(), date);
        List<UnpaidSaleEntity> useList = unpaidSaleRepo.getIdAndDate(u.getUserId(), date);
        List<WithdrawEntity> weList = withdrawRepo.getIdAndDate(u.getUserId(), date);


        model.addAttribute("aeList", aeList);
        model.addAttribute("seList", seList);
        model.addAttribute("useList", useList);
        model.addAttribute("weList", weList);



        int totalAssets = 0;
        int totalSale = 0;
        int totalUnpaidSale = 0;
        int totalWithdraw = 0;

        var assets  = assetsRepo.getAssetsByUserForeignKey(u.getUserId());
        var sale = saleRepo.getSaleByUserForeignKey(u.getUserId());
        var unpaidsale = unpaidSaleRepo.getUPSbyUserForeignKey(u.getUserId());
        var withdraw = withdrawRepo.getAllByUserForeignKey(u.getUserId());



        for(AssetsEntity ae : assets)totalAssets += ae.getAssets();
        model.addAttribute("totalAssets", totalAssets );

        for(SaleEntity ae : sale)totalSale += ae.getSale();
        model.addAttribute("totalSale", totalSale );

        for(UnpaidSaleEntity ae : unpaidsale)totalUnpaidSale += ae.getUnpaidSale();
        model.addAttribute("totalUnpaidSale", totalUnpaidSale );

        for(WithdrawEntity ae : withdraw)totalWithdraw += ae.getWithdraw();
        model.addAttribute("totalWithdraw", totalWithdraw );
        return "home";
    }








    //.............User Profile page...................
    @RequestMapping("/profile")
    public String userProfile(){
        return "profile";
    }
    @RequestMapping("/entry")
    public String getEntryPage(){


        return "accountEntry";
    }


}
