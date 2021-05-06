package com.servlet;
import com.dao.Friends;
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
@WebServlet("/WriteBlog")
public class WriteBlog extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPost(req, resp);
        req.setCharacterEncoding("UTF-8");
        ServletContext sc = getServletContext();
        ApplicationContext as =(ApplicationContext) sc.getAttribute("ApplicationContext");//监听器
        UserService us= as.getBean("userService",UserService.class);
        UserBlog userBlog = new UserBlog();
         int userid;
         String username;
         String blog;


        blog = req.getParameter("content-editormd-markdown-doc");
        System.out.println(blog);
        int tag = Integer.parseInt(req.getParameter("tag"));
        System.out.println(tag);

//
        HttpSession session =req.getSession();
        String s =  (String)session.getAttribute("user");
        userid = (int)session.getAttribute("userId");
        System.out.println(s);
//

        userBlog.setBlog(blog);
        userBlog.setUsername(s);
        userBlog.setUserid(userid);
        userBlog.setTag(tag);
        us.Writeblog(userBlog);

        resp.sendRedirect("index.jsp");
    }

}


