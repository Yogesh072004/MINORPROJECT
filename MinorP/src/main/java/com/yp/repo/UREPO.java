package com.yp.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.yp.model.USERS;

public interface UREPO extends JpaRepository<USERS, Integer> {
	@Query("FROM USERS WHERE umail = :umail AND pwd = :pwd")
    List<USERS> findByEmailAndPassword(@Param("umail") String umail, @Param("pwd") String pwd);
}
