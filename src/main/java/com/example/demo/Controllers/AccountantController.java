package com.example.demo.Controllers;

import com.example.demo.Entitys.SaleEntity;
import com.example.demo.Repositories.SaleRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Controller
@RequestMapping("/user")
public class AccountantController {

    @Autowired
    private SaleRepo saleRepository;
    @Autowired
    private SaleRepo unpaidSaleRepository;
    @Autowired
    private SaleRepo assetsRepository;
    @Autowired
    private SaleRepo withdrawRepository;



    @PostMapping("/sale")
    public String saleCalculator(@ModelAttribute SaleEntity saleEntry){
        saleEntry.setDate(DateTimeFormatter.ofPattern("dd/MM/yyyy").format(LocalDateTime.now()));
        saleRepository.save(saleEntry);
        return "accountEntry";
    }


    @PostMapping("/unpaidsale")
    public String unpaidSaleCalculator(@ModelAttribute SaleEntity unpaidSaleEntry){
        unpaidSaleEntry.setDate(DateTimeFormatter.ofPattern("dd/MM/yyyy").format(LocalDateTime.now()));
        unpaidSaleRepository.save(unpaidSaleEntry);
        return "accountEntry";
    }

    @PostMapping("/unpaidsale")
    public String assetsCalculator(@ModelAttribute SaleEntity assetsEntry){
        assetsEntry.setDate(DateTimeFormatter.ofPattern("dd/MM/yyyy").format(LocalDateTime.now()));
        assetsRepository.save(assetsEntry);
        return "accountEntry";
    }

    @PostMapping("/unpaidsale")
    public String withdrawCalculator(@ModelAttribute SaleEntity withdrawEntry){
        withdrawEntry.setDate(DateTimeFormatter.ofPattern("dd/MM/yyyy").format(LocalDateTime.now()));
        withdrawRepository.save(withdrawEntry);
        return "accountEntry";
    }

}

