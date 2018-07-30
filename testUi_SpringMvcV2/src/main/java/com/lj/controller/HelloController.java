package com.lj.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lj.model.Hello;
import com.lj.service.HelloService;

@RequestMapping("/hello")
@Controller
public class HelloController {
	@Resource
    private HelloService helloService;
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/page1")
	public String page1() {
		return "/hello/page1";
	}
	
	@RequestMapping("/page2")
	public String page2() {
		return "/hello/page2";
	}
	
	@RequestMapping("/page3")
	public String page3() {
		return "/hello/page3";
	}
	
	@RequestMapping("/hello")
	public String hello() {
		Hello hello = helloService.getHelloById(1);
		System.out.println(hello.toString());
		return "/hello/hello";
	}

}
