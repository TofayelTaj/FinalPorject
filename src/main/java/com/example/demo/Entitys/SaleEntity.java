package com.example.demo.Entitys;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class SaleEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int saleID;
    private int sale;
    private String inpDate;

    @Override
    public String toString() {
        return "SaleEntity{" +
                "saleID=" + saleID +
                ", sale=" + sale +
                ", date=" + inpDate +
                '}';
    }

    public int getSaleID() {
        return saleID;
    }

    public void setSaleID(int saleID) {
        this.saleID = saleID;
    }

    public int getSale() {
        return sale;
    }

    public void setSale(int sale) {
        this.sale = sale;
    }

    public String getDate() {
        return inpDate;
    }

    public void setDate(String date) {
        this.inpDate = date;
    }
}
