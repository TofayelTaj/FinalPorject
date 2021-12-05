package com.example.demo.Repositories;

import com.example.demo.Entitys.UnpaidSaleEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface UnpaidSaleRepo extends CrudRepository<UnpaidSaleEntity, Integer> {

    @Query(value = "select * from  unpaid_sale_entity where user_foreign_key = ?1 and inp_date =?2", nativeQuery = true)
    List<UnpaidSaleEntity> getIdAndDate(int id, String date);

    @Query(value = "select * from  unpaid_sale_entity where user_foreign_key = ?1 ", nativeQuery = true)
    List<UnpaidSaleEntity> getUPSbyUserForeignKey(int id);
}
