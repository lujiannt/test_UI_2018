package com.lj.mapper;

import org.springframework.stereotype.Repository;

import com.lj.model.Hello;

@Repository
public interface HelloMapper {
	
	Hello getHelloById(int id);
	
}
