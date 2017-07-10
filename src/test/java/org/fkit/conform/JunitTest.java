package org.fkit.conform;

import static org.junit.Assert.*;

import java.util.List;

import org.fkit.domain.Album;
import org.fkit.service.AlbumService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:applicationContext.xml") 
public class JunitTest {
	@Autowired
	public AlbumService albumService;
	
	@Test
	public void testAlbumController() {
		List<Album> album_list = albumService.getAll();
		System.out.println(album_list);
	}

}