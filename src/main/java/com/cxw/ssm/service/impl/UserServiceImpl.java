package com.cxw.ssm.service.impl;

import com.cxw.ssm.mapper.UserMapper;
import com.cxw.ssm.model.User;
import com.cxw.ssm.service.IUserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/*
* 用户业务层实现
* */
@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserMapper userMapper;

    /*
    * 查询用户列表，可用以初始页面展示
    * */
    @Override
    public Map<String, Object> querUserList(Map<String, Object> map) {

        //获取当前页
        int pageNum = Integer.parseInt(map.get("pageNum").toString());
        //每页几条记录
        int pageSize = Integer.parseInt(map.get("pageSize").toString());

        PageHelper.startPage(pageNum,pageSize);
        List<User> userList = userMapper.queryUserList(map);
        PageInfo pageInfo = new PageInfo(userList);

        long total = pageInfo.getTotal();
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("total",total);
        resultMap.put("rows",userList);

        return resultMap;
    }

    /*
    * 根据条件查询用户
    * */
    @Override
    public int queryUser(Map<String, Object> map) {
        return userMapper.queryUser(map);
    }

    /*
    * 新增用户信息
    * */
    @Override
    public void addUser(Map<String, Object> map) {
        userMapper.addUser(map);
    }

    /*
    * 根据用户名更改用户信息
    * */
    @Override
    public void updateUser(Map<String, Object> map) {
        userMapper.updateUser(map);
    }

    /*
    * 根据id更改用户信息
    * */
    @Override
    public void updateUserById(Map<String, Object> map) {
        userMapper.updateUserById(map);
    }

    /*
    * 删除用户，根据用户名删除
    * */
    @Override
    public void delUser(Map<String, Object> map) {
        userMapper.delUser(map);
    }


    /*
    * 修改用户密码
    * */
    @Override
    public void updateUserPass(Map<String, Object> map) {
        userMapper.updateUserPass(map);
    }



}
