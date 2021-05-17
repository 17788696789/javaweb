package com.yx.blog.blog_serve.dao;

import com.yx.blog.blog_serve.entity.Friend;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface FriendMapper {

    // 根据id获取朋友关系
    @Select("select * from td_friend where username=#{username}")
    List<Friend> getFriendById(String username);

    // 删除朋友关系
    @Delete("delete from td_friend where id=#{id}")
    int deleteFriend(int id);

    // 增加好友关系
    @Insert("insert into td_friend(username,friendname) values(#{username},#{friendname})")
    int addFriedn(Friend friend);
}
