package com.cxw.ssm.controller;

/*
* 用户控制层
* */

import com.cxw.ssm.common.AssembleResponseMsg;
import com.cxw.ssm.model.ResponseBody;
import com.cxw.ssm.service.IUserService;
import jdk.nashorn.internal.parser.Token;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import javax.xml.crypto.Data;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@RestController
public class UserController {

    @Autowired
    private IUserService userService;


    /*
     * 查询用户列表，可用以初始页面展示
     * */
    @CrossOrigin
    @RequestMapping(value = "/queryUserList",produces = "application/json;charset=utf-8")
    public ResponseBody queryUserList(@RequestBody Map<String, Object> map) {
        Map<String, Object> resultMap = userService.querUserList(map);
        return new AssembleResponseMsg().success(resultMap);

    }


    /*
    * 查询用户，用以登录
    * */
    @CrossOrigin
    @RequestMapping(value = "/queryUser",produces = "application/json;charset=utf-8")
    public ResponseBody queryUser(@RequestBody Map<String, Object> map){
        int flag = userService.queryUser(map);
        String name = "cxw";
        Map<String,String> all = new HashMap<>();

        if (flag == 1) {
            for (Map.Entry<String,Object> entry:map.entrySet()) {
                System.out.println("key:"+entry.getKey()+"value:"+entry.getValue());

                if (entry.getValue().equals(name)) {
                    all.put("token","admin");
                }else {
                    all.put("token","editor");
                }
            }

            all.put("status","ok");
            return new AssembleResponseMsg().success(all);
        }else {
            return new AssembleResponseMsg().failure(400,"error","用户名或密码错误");
        }

    }


    /*
    * 添加新增用户
    * */
    @CrossOrigin
    @RequestMapping(value = "/addUser", produces = "application/json;charset=utf-8")
    public ResponseBody addUser(@RequestBody Map<String, Object> map) {
        userService.addUser(map);
        return new AssembleResponseMsg().success("ok");
    }

    /*
    * 更新用户，根据用户名
    * */
    @CrossOrigin
    @RequestMapping(value = "/updateUser", produces = "application/json;charset=utf-8")
    public ResponseBody updateUser(@RequestBody Map<String, Object> map) {
        userService.updateUser(map);
        return new AssembleResponseMsg().success("ok");
    }

    /*
     * 更新用户，根据id
     * */
    @CrossOrigin
    @RequestMapping(value = "/updateUserById", produces = "application/json;charset=utf-8")
    public ResponseBody updateUserById(@RequestBody Map<String, Object> map) {
        userService.updateUserById(map);
        return new AssembleResponseMsg().success("ok");
    }

    /*
    * 删除用户，根据用户名删除
    * */
    @CrossOrigin
    @RequestMapping(value = "/delUser", produces = "application/json;charset=utf-8")
    public ResponseBody delUser(@RequestBody Map<String, Object> map) {
        userService.delUser(map);
        return new AssembleResponseMsg().success("ok");
    }


    /*
    * 修改用户密码
    * */

    @CrossOrigin
    @RequestMapping(value = "/updateUserpass", produces = "application/json;charset=utf-8")
    public ResponseBody updateUserpass(@RequestBody Map<String, Object> map) {
        userService.updateUserPass(map);
        return new AssembleResponseMsg().success("ok");
    }


}
