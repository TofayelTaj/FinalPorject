package com.example.demo.Controllers;

import com.example.demo.Entitys.*;
import com.example.demo.Repositories.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Controller
@RequestMapping("/user")
public class AccountantController {

    @Autowired
    private SaleRepo saleRepository;
    @Autowired
    private UnpaidSaleRepo unpaidSaleRepository;
    @Autowired
    private AssetsRepo assetsRepository;
    @Autowired
    private WithdrawRepo withdrawRepository;
    @Autowired
    private ProfitRepo profitRepo;

    @Autowired
    private  UserInfoController userInfo;
    private User user ;


    @PostMapping("/sale")
    public String saleCalculator(@ModelAttribute SaleEntity saleEntry, HttpServletRequest request ){
        saleEntry.setUserForeignKey(userInfo.getUserId(request));
        saleEntry.setInpDate(DateTimeFormatter.ofPattern("yyyy/MM/dd").format(LocalDateTime.now()));
        saleRepository.save(saleEntry);
        return "accountEntry";
    }
    @PostMapping("/unpaidsale")
    public String unpaidSaleCalculator(@ModelAttribute UnpaidSaleEntity unpaidSaleEntry, HttpServletRequest request){
        unpaidSaleEntry.setUserForeignKey(userInfo.getUserId(request));
        unpaidSaleEntry.setInpDate(DateTimeFormatter.ofPattern("yyyy/MM/dd").format(LocalDateTime.now()));
        unpaidSaleRepository.save(unpaidSaleEntry);
        return "accountEntry";
    }
    @PostMapping("/assets")
    public String assetsCalculator(@ModelAttribute AssetsEntity assetsEntry, HttpServletRequest request){
        assetsEntry.setUserForeignKey(userInfo.getUserId(request));
        assetsEntry.setInpDate(DateTimeFormatter.ofPattern("yyyy/MM/dd").format(LocalDateTime.now()));
        assetsRepository.save(assetsEntry);
        return "accountEntry";
    }
    @PostMapping("/withdraw")
    public String withdrawCalculator(@ModelAttribute WithdrawEntity withdrawEntry, HttpServletRequest request){
        withdrawEntry.setUserForeignKey(userInfo.getUserId(request));
        withdrawEntry.setInpDate(DateTimeFormatter.ofPattern("yyyy/MM/dd").format(LocalDateTime.now()));

        ProfitEntity profitEntity = new ProfitEntity();
        profitEntity.setProfit(withdrawEntry.getWithdraw() * -1);
        profitEntity.setUserForeignKey(userInfo.getUserId(request));
        profitEntity.setInpDate(DateTimeFormatter.ofPattern("yyyy/MM/dd").format(LocalDateTime.now()));
        profitRepo.save(profitEntity);

        withdrawRepository.save(withdrawEntry);
        return "accountEntry";
    }
    @PostMapping("/profit")
    public String profitCalculator(@ModelAttribute ProfitEntity profitEntity, HttpServletRequest request){
        profitEntity.setUserForeignKey(userInfo.getUserId(request));
        profitEntity.setInpDate(DateTimeFormatter.ofPattern("yyyy/MM/dd").format(LocalDateTime.now()));
        profitRepo.save(profitEntity);
        return "accountEntry";
    }

}

