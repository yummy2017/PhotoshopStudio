package org.fkit.controller;

import java.util.List;

import org.fkit.domain.Item;
import org.fkit.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ItemController {
	@Autowired
	@Qualifier("itemService")
	private ItemService itemService;
	
	@RequestMapping(value="/item")
	 public String item(Model model, String username,String clothes,String albums){
		// 获得所有图书集合
		System.out.print("item  first");
		List<Item> item_listusername = itemService.getAllusername();
		List<Item> item_listclothes = itemService.getAllclothes();
		List<Item> item_listalbums = itemService.getAllalbums();
		System.out.print("item second");
		// 将图书集合添加到model当中
		model.addAttribute("item_listusername", item_listusername);
		model.addAttribute("item_listclothes", item_listclothes);
		model.addAttribute("item_listalbums", item_listalbums);
		System.out.print("item third");
		// 跳转到main页面
		return "orders";
}
}
