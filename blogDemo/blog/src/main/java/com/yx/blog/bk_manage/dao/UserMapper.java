package com.yx.blog.bk_manage.dao;

import com.yx.blog.bk_manage.entity.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface UserMapper {
    // 获取所有的用户
    @Select("select * from td_user")
    List<User> getAllUser();

    // 删除指定用户
    @Delete("delete from td_user where id = #{id}")
    int deleteUser(int id);

    // 更新指定用户
    @Update("update td_user set username=#{username},password=#{password},role=#{role} where id=#{id}")
    int updateUser(User user);

    // 新增指定用户
    @Insert("insert into td_user(username,password,role,knowledge,life,music,consult,entertainment) values(#{username},#{password},#{role},0,0,0,0,0)")
    int addUser(User user);

    // 查询指定用户
    @Select("select * from td_user where username=#{username}")
    User selectUser(String username);

    // 验证登录
    @Select("select * from td_user where username=#{username}")
    List<User> checkLogin(String username);

    // 更新浏览，使浏览量+1
    @UpdateProvider(type = UserMapperProvider.class,method = "updateViewNum")
    int updateViewNum(String username,String type);
}
