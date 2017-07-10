package org.fkit.controller;

import java.util.List;

import org.fkit.domain.Cloth;
import org.fkit.service.ClothService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ClothController {

	@Autowired
	@Qualifier("clothService")
	private ClothService clothService;

	/**
	 * 处理/main请求
	 * */
	@RequestMapping(value="/cloth")
	 public String cloth(Model model,String clothes,String description,String img){
		System.out.print("clothes第一行");
		
		// 获得所有图书集合
		List<Cloth> cloth_list = clothService.getAll();
		// 将图书集合添加到model当中
		System.out.print("clothes第二行");
		model.addAttribute("cloth_list", cloth_list);
		System.out.print("clothes第三行");
		// 跳转到main页面
		return "clothes";
		// 跳转到main页面
}
	@RequestMapping(value="/clothdetail")
	 public String clothdetail(Model model,String clothes,String description,String img,String img1,String img2,String img3,String img4){
		System.out.print("clothesdetail第一行");
		
		// 获得所有图书集合
		List<Cloth> cloth_list = clothService.getAlldetail(clothes);
		// 将图书集合添加到model当中
		System.out.print("clothesdetaill第二行");
		model.addAttribute("cloth_list", cloth_list);
		System.out.print("clothesdetail第三行");
		// 跳转到main页面
		return "clodetail";
		// 跳转到main页面
}
}

