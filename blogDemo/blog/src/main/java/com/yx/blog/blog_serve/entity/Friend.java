package com.yx.blog.blog_serve.entity;

import lombok.Data;

/**
 * 功能描述：好友实体类
 *
 * @Author: yx
 * @Date: 2021/5/15 13:49
 */
@Data
public class Friend {
    private String username;    // 用户名称
    private String friendname;  // 朋友名称
    private int id;             // id
}
