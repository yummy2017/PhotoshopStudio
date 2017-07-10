package org.fkit.service.impl;

import org.fkit.mapper.RegistMapper;
import org.fkit.service.RegistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("registService")
public class RegistServicelmpl implements RegistService{
		
		/**
		 * 自动注入UserMapper
		 * */
		@Autowired
		private RegistMapper registMapper;

		/**
		 * UserService接口login方法实现
		 * @see { UserService }
		 * */
		@Transactional(readOnly=true)
		@Override
		public void regist(String username,String loginname,String password,String email) {
			registMapper.insertInformation(username,loginname,  password,email);
		}

		@Override
		public void phoregist(String username, String loginname, String password, String email) {
			registMapper.insertphoInformation(username,loginname,  password,email);
			
		}

	}
