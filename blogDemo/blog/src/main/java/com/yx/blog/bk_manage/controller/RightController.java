package com.yx.blog.bk_manage.controller;

import com.yx.blog.bk_manage.dao.RightMapper;
import com.yx.blog.bk_manage.entity.Right;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * 功能描述：权限接口区
 *
 * @Author: yx
 * @Date: 2021/5/14 20:25
 */
@RestController
@RequestMapping("right")
public class RightController {

    @Resource
    RightMapper rightMapper;

    // 查询所有权限
    @RequestMapping("getAllRight")
    public List<Right> getAllRight() {
        return rightMapper.getAllRight();
    }

    // 删除权限
    @RequestMapping("deleteRight")
    public int deleteRight(int id) {
        return rightMapper.deleteRight(id);
    }

    // 更新权限
    @RequestMapping("updateRight")
    public int updateRight(Right right) {
        return rightMapper.updateRight(right);
    }

    // 插入权限
    @RequestMapping("insertRight")
    public int insertRight(Right right) {
        return rightMapper.insertRight(right);
    }

    // 查询权限
    @RequestMapping("selectRight")
    public Right selectRight(int id) {
        return rightMapper.selectRight(id);
    }
}
