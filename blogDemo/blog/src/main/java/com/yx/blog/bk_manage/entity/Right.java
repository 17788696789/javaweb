package com.yx.blog.bk_manage.entity;

import lombok.Data;

/**
 * 功能描述：权限实体
 *
 * @Author: yx
 * @Date: 2021/5/14 20:09
 */
@Data
public class Right {
    private String right;       // 权限
    private String rightname;   // 权限名称
    private int id;             // id
}
