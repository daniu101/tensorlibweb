package com.tensorlib.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.tensorlib.dao.UserMapper;
import com.tensorlib.model.User;
import com.tensorlib.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {

	@Resource
	private UserMapper userDao;

	@Override
	public int insert(User record) {
		// TODO Auto-generated method stub
		return this.userDao.insert(record);
	}

}
