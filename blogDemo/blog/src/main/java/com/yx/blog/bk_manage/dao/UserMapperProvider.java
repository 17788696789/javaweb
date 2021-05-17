package com.yx.blog.bk_manage.dao;

/**
 * 功能描述：SQL的实现类可以写复杂sql
 *
 * @Author: yx
 * @Date: 2021/5/16 11:52
 */
public class UserMapperProvider {

    // 更新浏览，使浏览量+1
    public String updateViewNum(String username,String type){
        StringBuilder sb = new StringBuilder();
        sb.append("update td_user set ");
        sb.append(type);
        sb.append(" = ");
        sb.append(type);
        sb.append("+1");
        sb.append(" where username=");
        sb.append("#{username}");
        return sb.toString();
    }
}
