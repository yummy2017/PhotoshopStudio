package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Book;
import org.fkit.mapper.CarMapper;
import org.fkit.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("carService")
public class CarServicelmpl implements CarService{
	@Autowired
	private CarMapper carMapper;
	@Transactional(readOnly=true)
	@Override
	public void insert(String NAME){
		carMapper.insertInformation(NAME);
	}
	@Override
	public void update(Integer count){
		carMapper.updateInformation(count);
	}
	@Override
	public void delete(String NAME){
		carMapper.deleteInformation(NAME);
	}
	@Override
	public List<Book> getAll() {
		// TODO Auto-generated method stub
		return carMapper.findAll();
	}
}
