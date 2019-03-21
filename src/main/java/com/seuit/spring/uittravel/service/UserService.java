package com.seuit.spring.uittravel.service;

import java.util.List;
import java.util.Optional;
import java.util.Set;

import org.springframework.security.core.userdetails.UserDetails;

import com.seuit.spring.uittravel.entity.Role;
import com.seuit.spring.uittravel.entity.User;

public interface UserService {
	List<User> getAllUser();
}
