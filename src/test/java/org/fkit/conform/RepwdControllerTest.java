package org.fkit.conform;

import static org.junit.Assert.*;

import org.fkit.service.UserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class RepwdControllerTest extends BaseJunit{

	@Autowired
	private UserService userService;
	@Test
	public void test2() {
		assertEquals(userService.judge("ym","—Ó√¿","123"),null);
	}

}
