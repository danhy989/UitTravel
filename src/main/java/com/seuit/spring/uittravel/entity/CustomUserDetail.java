package com.seuit.spring.uittravel.entity;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;


import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class CustomUserDetail extends User implements UserDetails{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public CustomUserDetail(User user) {
		// TODO Auto-generated constructor stub
		super(user);
	}
	public CustomUserDetail() {
		// TODO Auto-generated constructor stub
		super();
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		Set<GrantedAuthority> grantedAuthority= new HashSet<>();
		for(Role role : getRoles()) {
			grantedAuthority.add(new SimpleGrantedAuthority("ROLE_"+role.getRole()));
		}
		return grantedAuthority;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}
	
}
