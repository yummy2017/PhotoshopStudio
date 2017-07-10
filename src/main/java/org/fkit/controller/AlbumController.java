package org.fkit.controller;

import java.util.List;

import org.fkit.domain.Album;
import org.fkit.service.AlbumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AlbumController {
	@Autowired
	@Qualifier("albumService")
	private AlbumService albumService;
	@RequestMapping(value="/album")
	 public String album(Model model,String img){
		System.out.print("album第一行");
		
		// 获得所有图书集合
		List<Album> album_list = albumService.getAll();
		// 将图书集合添加到model当中
		System.out.print("album第二行");
		model.addAttribute("album_list", album_list);
		System.out.print("album第三行");
		// 跳转到main页面
		return "albums";
		// 跳转到main页面
}
}
