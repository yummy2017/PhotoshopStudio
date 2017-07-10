package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Item;
import org.fkit.mapper.ItemMapper;
import org.fkit.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("itemService")
public class ItemServiceImpl implements ItemService{
	@Autowired
	private ItemMapper itemMapper;
	@Transactional(readOnly=true)
	@Override
	public List<Item> getAllusername() {
		// TODO Auto-generated method stub
		return itemMapper.findAllusername();
	}
		
		@Override
		public List<Item> getAllclothes() {
			// TODO Auto-generated method stub
			return itemMapper.findAllclothes();
		}
			
			@Override
			public List<Item> getAllalbums() {
				// TODO Auto-generated method stub
				return itemMapper.findAllalbums();
}
}