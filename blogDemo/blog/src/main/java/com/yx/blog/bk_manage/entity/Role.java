package com.yx.blog.bk_manage.entity;

import lombok.Data;

/**
 * 功能描述：角色实体
 *
 * @Author: yx
 * @Date: 2021/5/14 20:08
 */
@Data
public class Role {
    private String role;        // 角色
    private int id;             // id
    private String right;       // 权限
    private String rolename;    // 角色名称
}
