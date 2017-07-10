package org.fkit.service;

import java.util.List;

import org.fkit.domain.User;

/**
 * User服务层接口
 * */
public interface UserService {
	
	/**
	 * 判断用户登录
	 * @param String loginname
	 * @param String password
	 * @return 找到返回User对象，没有找到返回null
	 * */
	List<User> getAll();
	User login(String loginname,String password);
	User phologin(String loginname,String password);
	User judge(String loginname,String username,String email);
	void update( String loginname,String username,String password,String email);
	void regist(String username,String loginname,String password,String email);
	void phoregist(String username,String loginname,String password,String email);
}

