package org.fkit.controller;

import java.util.List;

import org.fkit.domain.Order;
import org.fkit.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class OrderController {

	/**
	 * 自动注入BookService
	 * */
	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;

	/**
	 * 处理/main请求
	 * */
	@RequestMapping(value="/order")
	 public String order(Model model, String loginname){
		System.out.print("order第一行");
		
		// 获得所有图书集合
		List<Order> order_list = orderService.getAll(loginname);
		// 将图书集合添加到model当中
		System.out.print("order第二行");
		model.addAttribute("order_list", order_list);
		System.out.print("order第三行");
		// 跳转到main页面
		return "orderindex";
		// 跳转到main页面
}
	@RequestMapping(value="/phoorder")
	 public String phoorder(Model model, String loginname){
		System.out.print("order第一行");
		
		// 获得所有图书集合
		List<Order> order_list = orderService.phogetAll(loginname);
		// 将图书集合添加到model当中
		System.out.print("order第二行");
		model.addAttribute("order_list", order_list);
		System.out.print("order第三行");
		// 跳转到main页面
		return "phoorder";
		// 跳转到main页面
}
}
