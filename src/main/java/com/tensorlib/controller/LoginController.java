package com.tensorlib.controller;

import java.util.Map;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tensorlib.model.User;
import com.tensorlib.service.IUserService;
import com.tensorlib.tool.Password;

@Controller
@RequestMapping("/login")
public class LoginController {
	private static Logger log = LoggerFactory.getLogger(LoginController.class);

	@Resource
	private IUserService userService;
	
	// /login/view/
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String view(Map<String, Object> model) {

		System.out.println("");

		return "login";
	}

	// /login/add
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public int add(Map<String, Object> model, User user) {

		// 用户是否存在
		if (false) {
			
		} else {
//			不存在时注册
			user.setPassword(Password.encrypt(user.getPassword()));

			if (userService.insert(user) == 1) {
				return 1;
			} else {
				return 0;
			}

		}
		return 0;
		
	}

}