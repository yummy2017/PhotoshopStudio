package org.fkit.conform;

import static org.junit.Assert.*;

import java.util.List;

import org.fkit.domain.Order;
import org.fkit.service.OrderService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class OrderControllerTest extends BaseJunit{

	@Autowired
	private OrderService orderService;
	
	@Test
	public void testOrder() {
		System.out.println("订单测试");
		List<Order> order_list = orderService.getAll("ym");
		System.out.println(order_list);
	}

}
