package com.yx.blog.bk_manage.dao;

import com.yx.blog.bk_manage.entity.Role;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface RoleMapper {
    // 查询所有角色
    @Select("select * from td_role")
    List<Role> getAllRole();

    // 更新角色
    @Update("update td_role set role=#{role},`right`=#{right},rolename=#{rolename} where id=#{id}")
    int updateRole(Role role);

    // 删除角色
    @Delete("delete from td_role where id=#{id}")
    int deleteRole(int id);

    // 新增角色
    @Insert("insert into td_role(role,`right`,rolename) values(#{role},#{right},#{rolename})")
    int addRole(Role role);

    // 查询一个角色
    @Select("select * from td_role where id=#{id}")
    Role selectRole(int id);
}
