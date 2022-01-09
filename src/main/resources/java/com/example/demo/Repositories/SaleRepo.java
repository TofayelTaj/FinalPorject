package com.example.demo.Repositories;

import com.example.demo.Entitys.AssetsEntity;
import com.example.demo.Entitys.SaleEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface SaleRepo extends CrudRepository<SaleEntity, Integer> {

    @Query(value = "select * from  sale_entity where user_foreign_key = ?1 and inp_date =?2", nativeQuery = true)
    List<SaleEntity> getIdAndDate(int id, String date);

    @Query(value = "select * from  sale_entity where user_foreign_key = ?1", nativeQuery = true)
    List<SaleEntity> getSaleByUserForeignKey(int id);

    @Query(value = "select * from  sale_entity where user_foreign_key = ?1 and inp_date like ?2", nativeQuery = true)
    List<SaleEntity> getAssetsForMonth(int id, String month);
}
