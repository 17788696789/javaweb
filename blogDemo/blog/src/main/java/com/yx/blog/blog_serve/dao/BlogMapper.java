package com.yx.blog.blog_serve.dao;

import com.yx.blog.blog_serve.entity.Blog;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface BlogMapper {

    // 查询所有的微博
    @Select("select * from td_blog order by publishtime desc")
    List<Blog> getAllBlog();

    // 删除微博
    @Delete("delete from td_blog where id=#{id}")
    int deleteBlog(int id);

    // 编辑微博
    @Update("update td_blog set blogcontent=#{blogcontent} where id=#{id}")
    int updateBlog(Blog blog);

    // 根据用户查询微博
    @Select("select * from td_blog where username=#{username} order by publishtime desc")
    List<Blog> getBlogByUser(String username);

    // 写微博
    @Insert("insert into td_blog(blogcontent,oknum,publishtime,username,blogtype) values(#{blogcontent},#{oknum},#{publishtime},#{username},#{blogtype})")
    int addBlog(Blog blog);

    // 点赞
    @Update("update td_blog set oknum=#{oknum} where id=#{id}")
    int addOk(int id,int oknum);
}
