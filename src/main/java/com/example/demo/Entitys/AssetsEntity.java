package com.example.demo.Entitys;

import javax.persistence.*;

@Entity
//@Table(name = "assetsentity")
public class AssetsEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
//    @Column(name = "assets_id")
    private int id;
    private int assets;
    private String inpDate;
    private int userForeignKey;


    public int getUserForeignKey() {
        return userForeignKey;
    }

    public void setUserForeignKey(int userForeignKey) {
        this.userForeignKey = userForeignKey;
    }

    public int getAssetsId() {
        return id;
    }

    public void setAssetsId(int assetsId) {
        this.id = assetsId;
    }

    public int getAssets() {
        return assets;
    }

    public void setAssets(int assets) {
        this.assets = assets;
    }

    public String getInpDate() {
        return inpDate;
    }

    public void setInpDate(String inpDate) {
        this.inpDate = inpDate;
    }

    @Override
    public String toString() {
        return "AssetsEntity{" +
                "assetsId=" + id +
                ", assets=" + assets +
                ", inpDate='" + inpDate + '\'' +
                '}';
    }
}
