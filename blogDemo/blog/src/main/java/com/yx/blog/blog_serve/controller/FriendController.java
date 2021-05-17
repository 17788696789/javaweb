package com.yx.blog.blog_serve.controller;

import com.yx.blog.blog_serve.dao.FriendMapper;
import com.yx.blog.blog_serve.entity.Friend;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * 功能描述：朋友关系的接口
 *
 * @Author: yx
 * @Date: 2021/5/15 13:55
 */
@RestController
@RequestMapping("friend")
public class FriendController {
    @Resource
    private FriendMapper friendMapper;
    // 根据id获取朋友关系
    @RequestMapping("getFriendById")
    public List<Friend> getFriendById(String username){
        return friendMapper.getFriendById(username);
    }

    // 删除朋友关系
    @RequestMapping("deleteFriend")
    public int deleteFriend(int id){
        return friendMapper.deleteFriend(id);

    }
    // 增加好友关系
    @RequestMapping("addFriedn")
    public int addFriedn(Friend friend){
        return friendMapper.addFriedn(friend);
    }
}
