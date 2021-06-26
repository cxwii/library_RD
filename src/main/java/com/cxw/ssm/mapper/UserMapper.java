package com.cxw.ssm.mapper;

import com.cxw.ssm.model.User;

import java.util.List;
import java.util.Map;

public interface UserMapper {

    //查询用户列表，可用以初始页面展示
    List<User> queryUserList (Map<String, Object> map);

    // 查询用户（可用以登录）
    int queryUser (Map<String, Object> map);

    //新增用户
    void addUser (Map<String, Object> map);

    //更新用户
    void updateUser (Map<String, Object> map);

    //更新用户,这个根据id来上面哪个是根据用户名
    void updateUserById (Map<String, Object> map);

    //删除用户
    void delUser (Map<String, Object> map);

    //修改用户密码
    void updateUserPass(Map<String,Object> map);
}
