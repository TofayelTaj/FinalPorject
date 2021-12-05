package com.example.demo.Entitys;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class WithdrawEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int withdrawID;
    private int withdraw;
    private String inpDate;
    private int userForeignKey;

    public int getUserForeignKey() {
        return userForeignKey;
    }

    public void setUserForeignKey(int userForeignKey) {
        this.userForeignKey = userForeignKey;
    }

    public int getWithdrawID() {
        return withdrawID;
    }

    public void setWithdrawID(int withdrawID) {
        this.withdrawID = withdrawID;
    }

    public int getWithdraw() {
        return withdraw;
    }

    public void setWithdraw(int withdraw) {
        this.withdraw = withdraw;
    }

    public String getInpDate() {
        return inpDate;
    }

    public void setInpDate(String inpDate) {
        this.inpDate = inpDate;
    }

    @Override
    public String toString() {
        return "WithdrawEntity{" +
                "withdrawID=" + withdrawID +
                ", withdraw=" + withdraw +
                ", inpDate='" + inpDate + '\'' +
                '}';
    }
}
