package com.breeze.service;

import com.breeze.model.UserModel;

import java.util.List;

public interface UserService {

    void saveUser(UserModel userModel);

    boolean updateUser(UserModel userModel);

    boolean deleteUser(Long id);

    UserModel findUserById(Long id);

    List<UserModel> selectList();
}
