package org.fkit.service.impl;


import java.util.List;

import org.fkit.domain.Order;
import org.fkit.mapper.IndexMapper;
import org.fkit.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("indexService")
public class IndexServicelmpl implements IndexService{
	@Autowired
	private IndexMapper indexMapper;

	/**
	 * UserService接口login方法实现
	 * @see { UserService }
	 * */
	@Transactional(readOnly=true)
	@Override
	public void index(
			String loginname,
			String ordername,
			String sex,
			String cont,
			String phoername,
			String clothes,
			String album,
			String time,
			String other,
			String state) {
		indexMapper.insertOrderInformation(
				loginname,
				ordername,
				sex,
				cont,
				phoername,
				clothes,
				album,
				time,
				other,
				state);
	}

	@Override
	public void alter(String id, String state) {
		// TODO Auto-generated method stub
		indexMapper.alterState(state, id);
	}

	@Override
	public List<Order> getAllusername() {
		// TODO Auto-generated method stub
			
			return indexMapper.findAllusername();
	}
}
