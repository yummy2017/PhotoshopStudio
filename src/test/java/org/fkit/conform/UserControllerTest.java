package org.fkit.conform;

import static org.junit.Assert.*;

import java.util.List;

import org.fkit.domain.User;
import org.fkit.service.UserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class UserControllerTest extends BaseJunit{
	
	
	@Autowired
	private UserService userService;
	
	@Test
	public void testLogin() {
		System.out.println("获取登录测试");
		//User user = userService.login("ym","1234");
		//assertEquals(userService.login("ym","1234"),null);
		assertEquals(userService.phologin("lx","123"),null);
		
	}
	
	@Test
	public void testJudge() {
		System.out.println("登录检验");
		assertEquals(userService.judge("ym","杨美","123"),null);
		
	}
	
	@Test
	public void testegist() {
		System.out.println("摄影师list检验");
		List<User> user_list = userService.getAll();
		System.out.println(user_list);
		
	}
	
	
	
}
