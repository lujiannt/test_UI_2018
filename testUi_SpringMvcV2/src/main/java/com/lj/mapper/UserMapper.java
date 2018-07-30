package com.lj.mapper;

import org.springframework.stereotype.Repository;

import com.lj.model.Hello;
import com.lj.model.User;

@Repository
public interface UserMapper {
	
	User findUser(User user);
	
}
