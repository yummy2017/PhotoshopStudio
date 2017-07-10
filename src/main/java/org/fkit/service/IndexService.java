package org.fkit.service;

import java.util.List;

import org.fkit.domain.Order;

public interface IndexService {
	void index( 
			String loginname,
			String ordername,
			String sex,
			String cont,
			String phoername,
			String clothes,
			String album,
			String time,
			String other,
			String state);
	
	void alter( 
			String id,
			String state);
	List<Order> getAllusername();
}
