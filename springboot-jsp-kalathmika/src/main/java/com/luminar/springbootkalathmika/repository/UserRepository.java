package com.luminar.springbootkalathmika.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.luminar.springbootkalathmika.model.User;

public interface UserRepository extends JpaRepository<User, Integer> {

	Optional<User> findByUserNameAndUserPassword(String userName, String password);

	
	

	
   
}
