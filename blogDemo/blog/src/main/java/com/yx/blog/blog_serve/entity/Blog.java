package com.yx.blog.blog_serve.entity;

import lombok.Data;

/**
 * 功能描述：
 *
 * @Author: yx
 * @Date: 2021/5/15 11:38
 */
@Data
public class Blog {
    private int id;             // 消息的id
    private String blogcontent; // 博客内容
    private int oknum;          // 点赞数
    private String publishtime; // 发布日期
    private String username;    // 发布人
    private String blogtype;    // 博客类型
}
