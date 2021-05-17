package com.yx.blog.bk_manage.dao;


import com.yx.blog.bk_manage.entity.Right;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface RightMapper {

    // 查询所有权限
    @Select("select * from td_right")
    List<Right> getAllRight();

    // 删除权限
    @Delete("delete from td_right where id=#{id}")
    int deleteRight(int id);

    // 更新权限
    @Update("update td_right set `right`=#{right},rightname=#{rightname} where id=#{id}")
    int updateRight(Right right);

    // 插入权限
    @Insert("insert into td_right(`right`,rightname) values(#{right},#{rightname}) ")
    int insertRight(Right right);

    // 查询权限
    @Select("select * from td_right where id = #{id}")
    Right selectRight(int id);
 }
