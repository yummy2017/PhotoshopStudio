package org.fkit.service;

import java.util.List;

import org.fkit.domain.Order;

public interface OrderService {
	List<Order> getAll(String loginname);
	List<Order> phogetAll(String loginame);
}
