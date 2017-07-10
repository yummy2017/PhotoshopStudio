package org.fkit.service.impl;

import java.util.List;


import org.fkit.domain.Order;
import org.fkit.mapper.OrderMapper;
import org.fkit.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("orderService")
public class OrderServicelmpl implements OrderService{

	@Autowired
	private OrderMapper orderMapper;
	@Transactional(readOnly=true)
	@Override
	public List<Order> getAll(String loginname) {
		
		return orderMapper.findAll(loginname);
	}
	@Override
	public List<Order> phogetAll(String loginname) {
		// TODO Auto-generated method stub
		return orderMapper.phofindAll(loginname);
	}
}
