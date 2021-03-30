//package com.gan.admin.service;
//
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
//
//@Configuration
//@EnableWebSecurity
//public class SecurityConfig  extends WebSecurityConfigurerAdapter{
//
//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
//		http.authorizeRequests()
//		.mvcMatchers("/admin/login.do", "/admin/join.do").permitAll()
//		.mvcMatchers("/admin/**").hasRole("admin")
//		.anyRequest().authenticated();
//		
//		http.formLogin().loginPage("/admin/login.do").permitAll()
//		.defaultSuccessUrl("/admin/loginOK.do");
//		
//		http.logout()
//		.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
//		.invalidateHttpSession(true)
//		.logoutSuccessUrl("/admin/login.do");
//		
//		http.httpBasic();
//	}
//
//}