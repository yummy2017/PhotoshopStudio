package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Album;
import org.fkit.mapper.AlbumMapper;
import org.fkit.service.AlbumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("albumService")
public class AlbumServiceImpl implements AlbumService{
	@Autowired
	private AlbumMapper albumMapper;
	@Transactional(readOnly=true)
	@Override
	public List<Album> getAll() {
		// TODO Auto-generated method stub
		return albumMapper.findAll();

}
}
