package com.example.demo.Entitys;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class UnpaidSaleEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int unpaidSaleID;
    private int unpaidSale;
    private String inpDate;
    private int userForeignKey;

    public int getUserForeignKey() {
        return userForeignKey;
    }

    public void setUserForeignKey(int userForeignKey) {
        this.userForeignKey = userForeignKey;
    }

    public int getUnpaidSaleID() {
        return unpaidSaleID;
}

    public void setUnpaidSaleID(int unpaidSaleID) {
        this.unpaidSaleID = unpaidSaleID;
    }

    public int getUnpaidSale() {
        return unpaidSale;
    }

    public void setUnpaidSale(int unpaidSale) {
        this.unpaidSale = unpaidSale;
    }

    public String getInpDate() {
        return inpDate;
    }

    public void setInpDate(String inpDate) {
        this.inpDate = inpDate;
    }


}
