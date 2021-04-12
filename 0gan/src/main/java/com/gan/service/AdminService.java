package com.gan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.gan.admin.dao.AdminDao;
import com.gan.admin.vo.AdmVo;

@Service
public class AdminService implements UserDetailsService {

	@Autowired
	private AdminDao dao;

	public AdminDao getDao() {
		return dao;
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		AdmVo admin = dao.selectAdmin(username);
		if(admin==null) {
			throw new UsernameNotFoundException(username);
		}
		return User.builder()
				.username(username)
				.password(admin.getAdm_pwd())
				.roles("admin")
				.build();
	}
	
}