package org.fkit.conform;

import static org.junit.Assert.*;

import java.util.List;

import org.fkit.domain.Cloth;
import org.fkit.service.ClothService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class ClothControllerTest extends BaseJunit{

	@Autowired
	private ClothService clothService;
	
	@Test
	public void testCloth() {
		System.out.println("服装测试");
		List<Cloth> cloth_list = clothService.getAll();
		System.out.println(cloth_list);
	}

}
