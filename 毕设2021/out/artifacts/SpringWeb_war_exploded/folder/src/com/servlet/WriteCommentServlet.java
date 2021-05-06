package com.servlet;

import com.dao.Comment;
import com.service.UserService;
import org.springframework.context.ApplicationContext;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import com.dao.UserBlog;
@WebServlet("/WriteComment")
public class WriteCommentServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPost(req, resp);
        req.setCharacterEncoding("UTF-8");
        ServletContext sc = getServletContext();
        ApplicationContext as =(ApplicationContext) sc.getAttribute("ApplicationContext");//监听器
        UserService us= as.getBean("userService",UserService.class);
       Comment comment = new Comment();

        int comment_userId;
        int comment_blogId;
        String comment_content;
        String comment_username;

          comment_content=req.getParameter("newcomment");
          comment_blogId=Integer.parseInt(req.getParameter("id"));
          HttpSession session=req.getSession();
          String s=(String)session.getAttribute("user");
          comment_userId=(int)session.getAttribute("userId");
          comment.setComment_blogId(comment_blogId);
          comment.setComment_content(comment_content);
          comment.setComment_userId(comment_userId);
          comment.setComment_username(s);
          us.WriteComment(comment);
//        blog = req.getParameter("newblog");
//        int tag = Integer.parseInt(req.getParameter("tag"));
//        System.out.println(tag);
//
////
//        HttpSession session =req.getSession();
//        String s =  (String)session.getAttribute("user");
//        userid = (int)session.getAttribute("userId");
//        System.out.println(s);
////
//
//        userBlog.setBlog(blog);
//        userBlog.setUsername(s);
//        userBlog.setUserid(userid);
//        userBlog.setTag(tag);
//        us.Writeblog(userBlog);
//
        resp.sendRedirect("vue.html?id="+comment_blogId);
    }

}
