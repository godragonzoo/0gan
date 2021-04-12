package com.gan.service;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class SecurityConfig  extends WebSecurityConfigurerAdapter{

	
	/**
	 * 로그인페이지 css link 허용 by 박권익
	 */
	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**");
	}

	/**
	 * 관리자페이지 Spring Security 적용 by 박권익
	 */
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.authorizeRequests()
		.mvcMatchers("/notice.do","/faq.do","/theme.do","/themePlace.do", "/file/**","/adminLogin.do", "/adminJoin.do", "/adminError.do").permitAll()
		.mvcMatchers("/admin/**").hasRole("admin")
		.anyRequest().authenticated();
		
		http.formLogin().loginPage("/adminLogin.do").permitAll()
		.defaultSuccessUrl("/adminLoginOK.do");
		
		http.logout()
		.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
		.invalidateHttpSession(true)
		.logoutSuccessUrl("/adminLogin.do");
		
		http.httpBasic();
	}

}