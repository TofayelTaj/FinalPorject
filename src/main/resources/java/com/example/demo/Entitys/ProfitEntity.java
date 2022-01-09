package com.example.demo.Entitys;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ProfitEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int profitId;
    private int profit;
    private String inpDate;
    private int userForeignKey;

    public int getProfitId() {
        return profitId;
    }

    public void setProfitId(int profitId) {
        this.profitId = profitId;
    }

    public int getProfit() {
        return profit;
    }

    public void setProfit(int profit) {
        this.profit = profit;
    }

    public String getInpDate() {
        return inpDate;
    }

    public void setInpDate(String inpDate) {
        this.inpDate = inpDate;
    }

    public int getUserForeignKey() {
        return userForeignKey;
    }

    public void setUserForeignKey(int userForeignKey) {
        this.userForeignKey = userForeignKey;
    }
}
