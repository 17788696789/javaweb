package com.yx.blog.blog_serve.controller;

import com.yx.blog.blog_serve.dao.BlogMapper;
import com.yx.blog.blog_serve.entity.Blog;
import com.yx.blog.blog_serve.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * 功能描述：博客的接口函数
 *
 * @Author: yx
 * @Date: 2021/5/15 11:55
 */
@RequestMapping("blog")
@RestController
public class BlogController {

    @Resource
    private BlogMapper blogMapper;

    @Autowired
    private BlogService blogService;

    // 查询所有的微博
    @RequestMapping("getAllBlog")
    public List<Blog> getAllBlog(){
        return blogMapper.getAllBlog();
    }

    // 删除微博
    @RequestMapping("deleteBlog")
    public int deleteBlog(int id){
        return blogMapper.deleteBlog(id);
    }

    // 编辑微博
    @RequestMapping("updateBlog")
    public int updateBlog(Blog blog){
        return blogMapper.updateBlog(blog);
    }
    // 根据用户查询微博
    @RequestMapping("getBlogByUser")
    public List<Blog> getBlogByUser(String username){
        return blogMapper.getBlogByUser(username);
    }

    // 写微博
    @RequestMapping("addBlog")
    public int addBlog(Blog blog){
        return blogMapper.addBlog(blog);
    }

    // 点赞
    @RequestMapping("addOk")
    public int addOk(int id,int oknum){
        return blogMapper.addOk(id,oknum);
    }

    // 获取热度序列
    @RequestMapping("getRecommendList")
    public List<String> getRecommendList(String username) {
        int[] result = {1,2,3,4,5};
        double[] middle = blogService.getRecommendList(username);
        for(int i = middle.length - 1; i>0 ; i--){
                for(int j = 0;j<i ;j++){
                    if(middle[j]>middle[j+1]){
                        double temp1 = middle[j];
                        middle[j] = middle[j+1];
                        middle[j+1] = temp1;

                        int temp2 = result[j];
                        result[j] = result[j+1];
                        result[j+1] = temp2;
                    }
                };
        }
        List<String> list = new ArrayList<>();
        for(int i = 0;i<result.length;i++){
            if(result[i] == 1){
                list.add("knowledge");
            }else if(result[i] == 2){
                list.add("life");
            }else if(result[i] == 3){
                list.add("entertainment");
            }else if(result[i] == 4){
                list.add("consult");
            }else if(result[i] == 5){
                list.add("music");
            }
        }
        return list;
    }
}
