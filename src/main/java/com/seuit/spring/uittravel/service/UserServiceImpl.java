package com.seuit.spring.uittravel.service;


import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.swing.text.html.ListView;
import javax.transaction.Transactional;

import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.provider.HibernateUtils;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.seuit.spring.uittravel.entity.CustomUserDetail;
import com.seuit.spring.uittravel.entity.Role;
import com.seuit.spring.uittravel.entity.User;
import com.seuit.spring.uittravel.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Autowired
	private UserRepository userRepository;
	
	@Override
	@Transactional
	public List<User> getAllUser() {
		return userRepository.findAll();
	}

	@Override
	@Transactional
	public void addUser(User user) {
		if(user.getStatus()==null) {
			user.setStatus(1);
		}
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		Optional<User> userTemp = userRepository.findByUsername(user.getUsername());
		if(userTemp.isPresent()) {
			return;
		}
		userRepository.save(user);
	}

	@Override
	@Transactional
	public void deleteUser(Integer Id) {
		userRepository.deleteById(Id);
	}

	@Override
	@Transactional
	public User findUserById(Integer Id) {
		Optional<User> user = userRepository.findById(Id);
		user.orElseThrow(()-> new UsernameNotFoundException("Cant find User"));
		return user.get();
	}
	
}
