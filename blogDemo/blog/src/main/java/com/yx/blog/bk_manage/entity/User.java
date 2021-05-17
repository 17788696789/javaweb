package com.yx.blog.bk_manage.entity;

import lombok.Data;

/**
 * 功能描述：用户实体
 *
 * @Author: yx
 * @Date: 2021/5/14 20:07
 */
@Data
public class User {
    private String username;        // 用户名
    private String password;        // 密码
    private int id;                 // id
    private String role;            // 角色
    private int knowledge;          // 知识类浏览量1
    private int life;               // 生活类浏览量2
    private int entertainment;      // 娱乐类浏览量3
    private int consult;            // 咨询类浏览量4
    private int music;              // 音乐类浏览量5
}
