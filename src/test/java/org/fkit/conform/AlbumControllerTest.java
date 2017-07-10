package org.fkit.conform;

import static org.junit.Assert.*;

import java.util.List;

import org.fkit.domain.Album;
import org.fkit.service.AlbumService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class AlbumControllerTest extends BaseJunit{

	@Autowired
	private AlbumService albumService;
	@Test
	public void test() {
		System.out.println("获取相册测试");
		List<Album> album_list = albumService.getAll();
		System.out.println(album_list);
	}

}
