package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Cloth;
import org.fkit.mapper.ClothMapper;
import org.fkit.service.ClothService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("clothService")
public class ClothServiceImpl implements ClothService{
	@Autowired
	private ClothMapper clothMapper;
	@Transactional(readOnly=true)
	@Override
	public List<Cloth> getAll() {
		// TODO Auto-generated method stub
		return clothMapper.findAll();

}
	@Override
	public List<Cloth> getAlldetail(String clothes) {
		// TODO Auto-generated method stub
		return clothMapper.findAlldetail(clothes);
	}
}
