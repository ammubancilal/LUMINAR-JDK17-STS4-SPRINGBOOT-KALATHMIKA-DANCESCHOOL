package com.luminar.springbootkalathmika.service;

import java.util.Optional;
import com.luminar.springbootkalathmika.model.User;

public interface UserService {
    Optional<User> authenticate(String userName, String password);
}
