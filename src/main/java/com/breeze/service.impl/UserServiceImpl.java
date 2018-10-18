package com.breeze.service.impl;

import com.breeze.dao.UserMapper;
import com.breeze.model.UserModel;
import com.breeze.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    //新增用户
    public void saveUser(UserModel userModel) {
        userMapper.saveUser(userModel);
    }

    public boolean updateUser(UserModel userModel) {
        return userMapper.updateUser(userModel);
    }

    public boolean deleteUser(Long id) {
        return userMapper.deleteUser(id);
    }

    public UserModel findUserById(Long id) {
        return userMapper.findUserById(id);
    }

    //查询所有
    public List<UserModel> selectList() {
        return userMapper.selectList();
    }
}
