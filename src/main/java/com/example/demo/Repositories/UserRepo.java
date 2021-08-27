package com.example.demo.Repositories;

import com.example.demo.Entitys.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;


@Service
public interface UserRepo extends CrudRepository<User, Integer> {

    @Query(value = "select * from User  where user_email = ?1 and user_password = ?2 ", nativeQuery = true)
    User findByEmailAndPssword(String email, String password);

}
