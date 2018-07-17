package com.lj.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lj.model.Hello;
import com.lj.service.HelloService;

@Controller
@RequestMapping("/wx")
public class WxController {
	@Resource
    private HelloService helloService;
	
	@RequestMapping("/req1")
	@ResponseBody
	public Hello req1() {
		Hello hello = helloService.getHelloById(1);
		System.out.println(hello.toString());
		return hello;
	}	
}
