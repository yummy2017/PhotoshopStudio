package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.User;
import org.fkit.mapper.UserMapper;
import org.fkit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * User服务层接口实现类
 * @Service("userService")用于将当前类注释为一个Spring的bean，名为userService
 * */
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("userService")
public class UserServiceImpl implements UserService {
	
	/**
	 * 自动注入UserMapper
	 * */
	@Autowired
	private UserMapper userMapper;

	/**
	 * UserService接口login方法实现
	 * @see { UserService }
	 * */
	@Transactional(readOnly=true)
	@Override
	public User login(String loginname, String password) {
		return userMapper.findWithLoginnameAndPassword(loginname, password);
	}

	@Override
	public void update(String loginname, String username, String password, String email) {
		// TODO Auto-generated method stub
		userMapper.repassword(username, loginname, password, email);
	}

	@Override
	public User judge(String loginname, String username, String email) {
		// TODO Auto-generated method stub
		return userMapper.findWithUsernameAndLoginnameAndEmail(username,loginname,email);
	}

	@Override
	public User phologin(String loginname, String password) {
		// TODO Auto-generated method stub
		return userMapper.phofindWithLoginnameAndPassword(loginname, password);
	}

	@Override
	public List<User> getAll() {
		// TODO Auto-generated method stub
		return userMapper.findAll();
	}
	@Override
	public void regist(String username,String loginname,String password,String email) {
		userMapper.insertInformation(username,loginname,  password,email);
	}

	@Override
	public void phoregist(String username, String loginname, String password, String email) {
		userMapper.insertphoInformation(username,loginname,  password,email);
}
}
