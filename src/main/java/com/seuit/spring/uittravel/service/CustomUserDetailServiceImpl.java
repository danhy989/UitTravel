package com.seuit.spring.uittravel.service;

import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.seuit.spring.uittravel.entity.CustomUserDetail;
import com.seuit.spring.uittravel.entity.User;
import com.seuit.spring.uittravel.repository.UserRepository;

@Service
public class CustomUserDetailServiceImpl implements UserDetailsService {

	@Autowired
	private UserRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		Optional<User> userOptinal = userRepository.findByUsername(username);
		userOptinal.orElseThrow(() -> new UsernameNotFoundException("Cant find user"));
		return userOptinal.map((user)->new CustomUserDetail(user)).get();
	}

}
