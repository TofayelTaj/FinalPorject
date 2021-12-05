package com.example.demo.Repositories;

import com.example.demo.Entitys.WithdrawEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import java.util.List;

public interface WithdrawRepo extends CrudRepository<WithdrawEntity, Integer> {

    @Query(value = "select * from  withdraw_entity where user_foreign_key = ?1 and inp_date =?2", nativeQuery = true)
    List<WithdrawEntity> getIdAndDate(int id, String date);


    @Query(value = "select * from  withdraw_entity where user_foreign_key = ?1", nativeQuery = true)
    List<WithdrawEntity> getAllByUserForeignKey(int id);
}
