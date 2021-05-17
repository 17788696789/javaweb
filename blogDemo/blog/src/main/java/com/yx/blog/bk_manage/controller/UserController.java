package com.yx.blog.bk_manage.controller;

import com.yx.blog.bk_manage.dao.UserMapper;
import com.yx.blog.bk_manage.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * 功能描述：用户接口区
 *
 * @Author: yx
 * @Date: 2021/5/14 20:24
 */
@RestController
@RequestMapping("user")
public class UserController {

    @Resource
    private UserMapper userMapper;

    // 获取所有的用户
    @RequestMapping("getAllUser")
    public List<User> getAllUser(){
        return userMapper.getAllUser();
    }

    // 删除指定用户
    @RequestMapping("deleteUser")
    public int deleteUser(int id){
        return userMapper.deleteUser(id);
    }

    // 更新指定用户
    @RequestMapping("updateUser")
    public int updateUser(User user){
        return userMapper.updateUser(user);
    }

    // 新增指定用户
    @RequestMapping("addUser")
    public int addUser(User user){
        return userMapper.addUser(user);
    }

    // 查询指定用户
    @RequestMapping("selectUser")
    public User selectUser(int id){
        return selectUser(id);
    }

    // 验证登陆状态
    @RequestMapping("checkLogin")
    public int checkLogin(@Param("username") String username, @Param("password")String password){
        System.out.println(username);
        System.out.println(password);
        List<User> list = userMapper.checkLogin(username);
        if(list.size() == 0){
            return 0;
        }else{
            User user = list.get(0);
            if(user.getPassword().equals(password)){
                if(user.getRole().equals("admin")){
                    return 2;
                }else{
                    return 3;
                }
            }else {
                return 1;
            }
        }
    }

    // 更新浏览，使浏览量+1
    @RequestMapping("updateViewNum")
    public int updateViewNum(String username,String type){
        return userMapper.updateViewNum(username,type);
    }
}
