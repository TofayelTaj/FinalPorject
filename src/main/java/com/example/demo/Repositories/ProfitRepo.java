package com.example.demo.Repositories;

import com.example.demo.Entitys.ProfitEntity;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ProfitRepo extends CrudRepository<ProfitEntity, Integer> {

    @Query(value = "select * from  profit_entity where user_foreign_key = ?1 and inp_date =?2", nativeQuery = true)
    List<ProfitEntity> getIdAndDate(int id, String date);

    @Query(value = "select * from  profit_entity where user_foreign_key = ?1 ", nativeQuery = true)
    List<ProfitEntity> getUPbyUserForeignKey(int id);
}
