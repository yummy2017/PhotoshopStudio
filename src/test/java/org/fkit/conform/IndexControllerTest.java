package org.fkit.conform;

import static org.junit.Assert.*;

import java.util.List;

import org.fkit.domain.Order;
import org.fkit.service.IndexService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;


public class IndexControllerTest extends BaseJunit{

	@Autowired
	private IndexService indexService;
	@Test
	public void test() {
		List<Order> order_list = indexService.getAllusername();
		System.out.println(order_list);
	}

}
