package com.example.demo.Repositories;

import com.example.demo.Entitys.AssetsEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface AssetsRepo extends CrudRepository<AssetsEntity, Integer> {



 @Query(value = "select * from  assets_entity where user_foreign_key = ?1 and inp_date =?2", nativeQuery = true)
     List<AssetsEntity> getIdAndDate(int id, String date);

 @Query(value = "select * from  assets_entity where user_foreign_key = ?1", nativeQuery = true)
     List<AssetsEntity> getAssetsByUserForeignKey(int id);

}
