package com.seuit.spring.uittravel.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.seuit.spring.uittravel.service.CustomUserDetailServiceImpl;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
}
	
	@Autowired
	private CustomUserDetailServiceImpl customUserDetailServiceImpl;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//		UserBuilder user = User.withDefaultPasswordEncoder();
//		auth.inMemoryAuthentication().withUser(user.username("duyanh").password("123456").roles("admin"));
		auth.userDetailsService(customUserDetailServiceImpl).passwordEncoder(passwordEncoder());
	}


	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("/admin/**").hasRole("admin")
								.antMatchers("/**").permitAll().and()
								.formLogin().and().logout().permitAll().invalidateHttpSession(true).and().exceptionHandling()
								.accessDeniedPage("/access-denied");

	}

}
