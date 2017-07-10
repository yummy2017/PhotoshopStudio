package org.fkit.conform;

import static org.junit.Assert.*;

import org.fkit.service.RegistService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class RegistControllerTest extends BaseJunit{
	@Autowired
	private RegistService registService;
	
	@Test
	public void testRegist() {
		registService.regist("ym","ym", "123","123");
		//System.out.print(null,registService.regist("ym","ym", "123","123"));
	}

}
