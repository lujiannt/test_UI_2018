package com.lj.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lj.model.Hello;
import com.lj.service.HelloService;

@Controller
public class HelloController {
	@Resource
    private HelloService helloService;
	
	@RequestMapping("/hello")
	public String hello() {
		Hello hello = helloService.getHelloById(1);
		System.out.println(hello.toString());
		return "hello/hello";
	}

}
