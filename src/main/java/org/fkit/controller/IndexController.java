package org.fkit.controller;




import java.util.List;

import org.fkit.domain.Album;
import org.fkit.domain.Order;
import org.fkit.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
@Controller
public class IndexController {
	@Autowired
	@Qualifier("indexService")
	private IndexService indexService;

	/**
	 * 处理/login请求
	 * */
	@RequestMapping(value="/index")
	 public ModelAndView index(
			String loginname,
			 String ordername,
				String sex,
				String cont,
				String phoername,
				String clothes,
				String album,
				String time,
				String other,
				String state,
				ModelAndView mv,
				Model model
			){
			List<Order> order_list = indexService.getAllusername();
			model.addAttribute("order_list", order_list);
			System.out.print("index1");
			indexService.index(loginname,ordername,sex,cont,phoername,clothes,album,time,other,state);
			// 转发到main请求
			System.out.print("index2");
			mv.setView(new RedirectView("/GradleDemo/indexorder"));
			return mv;	
	}
	
	@RequestMapping(value="/alter")
	 public ModelAndView index(
			String id,
			String state,
				ModelAndView mv
			){

			System.out.print("index1");
			indexService.alter(id, state);
			// 转发到main请求
			System.out.print("index2");
			mv.setView(new RedirectView("/GradleDemo/phoorder"));
			return mv;	
	}
}
