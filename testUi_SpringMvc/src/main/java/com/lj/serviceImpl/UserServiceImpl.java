package com.lj.serviceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lj.mapper.UserMapper;
import com.lj.model.User;
import com.lj.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Resource
	private UserMapper userMapper;
	
	@Override
	public User findUser(User user) {
		return userMapper.findUser(user);
	}

}
