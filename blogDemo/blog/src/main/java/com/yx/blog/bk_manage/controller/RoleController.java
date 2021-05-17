package com.yx.blog.bk_manage.controller;

import com.yx.blog.bk_manage.dao.RoleMapper;
import com.yx.blog.bk_manage.entity.Role;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * 功能描述：角色接口区
 *
 * @Author: yx
 * @Date: 2021/5/14 20:25
 */
@RequestMapping("role")
@RestController
public class RoleController {

    @Resource
    RoleMapper roleMapper;

    // 查询所有角色
    @RequestMapping("getAllRole")
    public List<Role> getAllRole(){
        return roleMapper.getAllRole();
    }

    // 更新角色
    @RequestMapping("updateRole")
    public int updateRole(Role role){
        return roleMapper.updateRole(role);
    }

    // 删除角色
    @RequestMapping("deleteRole")
    public int deleteRole(int id){
        return roleMapper.deleteRole(id);
    }

    // 新增角色
    @RequestMapping("addRole")
    public int addRole(Role role){
        return roleMapper.addRole(role);
    }

    // 查询一个角色
    @RequestMapping("selectRole")
    public Role selectRole(int id){
        return roleMapper.selectRole(id);
    }
}
