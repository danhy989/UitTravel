package com.seuit.spring.uittravel.service;

import java.util.List;
import com.seuit.spring.uittravel.entity.User;

public interface UserService {
	List<User> getAllUser();

	void addUser(User user);

	void deleteUser(Integer Id);

	User findUserById(Integer Id);
}
