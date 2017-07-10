package org.fkit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.fkit.domain.User;
import org.fkit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

/**
 * 澶勭悊鐢ㄦ埛璇锋眰鎺у埗鍣�
 * */
@Controller
public class UserController {
	
	/**
	 * 鑷姩娉ㄥ叆UserService
	 * */
	@Autowired
	@Qualifier("userService")
	private UserService userService;

	/**
	 * 澶勭悊/login璇锋眰
	 * */
	@RequestMapping(value="/login")
	 public ModelAndView login(
			 String loginname,String password,
			 ModelAndView mv,
			 HttpSession session){
		// 鏍规嵁鐧诲綍鍚嶅拰瀵嗙爜鏌ユ壘鐢ㄦ埛锛屽垽鏂敤鎴风櫥褰�
		User user = userService.login(loginname, password);
		if(user != null){
			// 鐧诲綍鎴愬姛锛屽皢user瀵硅薄璁剧疆鍒癏ttpSession浣滅敤鑼冨洿鍩�
			session.setAttribute("user", user);
			// 杞彂鍒癿ain璇锋眰
			mv.setView(new RedirectView("/GradleDemo/indexorder"));
		}else{
			// 鐧诲綍澶辫触锛岃缃け璐ユ彁绀轰俊鎭紝骞惰烦杞埌鐧诲綍椤甸潰
			mv.addObject("message", "鐧诲綍鍚嶆垨瀵嗙爜閿欒锛岃閲嶆柊杈撳叆!");
			mv.setViewName("loginForm");
		}
		return mv;
	}
	
	@RequestMapping(value="/phologin")
	 public ModelAndView phologin(
			 String loginname,String password,
			 ModelAndView mv,
			 HttpSession session){
		User user = userService.phologin(loginname, password);
		if(user != null){
			session.setAttribute("user", user);
			System.out.print("成功");
			
			mv.setView(new RedirectView("/GradleDemo/phoorder"));
			
			
		}else{
			mv.addObject("message", "您的账户名或密码有误或者您还没有通过审核哟!");
			System.out.print("失败");
			mv.setViewName("loginForm");
		}
		return mv;
	}
	
	@RequestMapping(value="/regist")
	 public String regist(
			 String loginname,String username,String password,String email,
			 Model model){
			System.out.print("1");
			userService.regist(username,loginname,  password,email);
			// 转发到main请求
			System.out.print("2");
			return "loginForm";	
	}
	
	@RequestMapping(value="/phoregist")
	 public String phoregist(
			 String loginname,String username,String password,String email,
			 Model model){
			System.out.print("1");
			userService.phoregist(username,loginname,  password,email);
			// 转发到main请求
			System.out.print("2");
			return "phoorder";	
	}
	
	@RequestMapping(value="/repwd")
	 public ModelAndView login(
			 String loginname,String username,String password,String email,
			 ModelAndView mv,
			 HttpSession session){
		// 鏍规嵁鐧诲綍鍚嶅拰瀵嗙爜鏌ユ壘鐢ㄦ埛锛屽垽鏂敤鎴风櫥褰�
		System.out.print("1");
		User user = userService.judge(username,loginname, password);
		System.out.print("2");
		if(user != null ){
			userService.update(loginname, username, password, email);
			System.out.print("3");
			// 鐧诲綍鎴愬姛锛屽皢user瀵硅薄璁剧疆鍒癏ttpSession浣滅敤鑼冨洿鍩�
			session.setAttribute("user", user);
			System.out.print("4");
			// 杞彂鍒癿ain璇锋眰
			mv.setView(new RedirectView("/GradleDemo/loginForm"));
			System.out.print("5");
		}else{
			// 鐧诲綍澶辫触锛岃缃け璐ユ彁绀轰俊鎭紝骞惰烦杞埌鐧诲綍椤甸潰
			mv.addObject("message", "您输入的账号或密码错误!");
			
			System.out.print("6");
			mv.setViewName("repassword");
			System.out.print("7");
			
		}
		return mv;
	}
	
	@RequestMapping(value="/photographer")
	 public String user(Model model, String username,String img,String description){
		System.out.print("order第一行");
		
		// 获得所有图书集合
		List<User> user_list = userService.getAll();
		// 将图书集合添加到model当中
		System.out.print("order第二行");
		model.addAttribute("user_list", user_list);
		System.out.print("order第三行");
		// 跳转到main页面
		return "photographers";
		// 跳转到main页面
}
	
}
