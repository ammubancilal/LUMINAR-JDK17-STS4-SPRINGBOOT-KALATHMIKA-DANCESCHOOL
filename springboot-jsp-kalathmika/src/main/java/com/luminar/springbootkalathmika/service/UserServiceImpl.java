package com.luminar.springbootkalathmika.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.luminar.springbootkalathmika.model.User;
import com.luminar.springbootkalathmika.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

	@Override
	public Optional<User> authenticate(String userName, String password) {
		 return userRepository.findByUserNameAndUserPassword(userName, password);
	}

   
}
