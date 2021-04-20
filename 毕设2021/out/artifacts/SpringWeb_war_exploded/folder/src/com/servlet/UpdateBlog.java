package com.servlet;

import com.dao.UserBlog;
import com.dao.UserDao_1;

import com.service.UserService;
import org.springframework.context.ApplicationContext;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UpdateBlog")
public class UpdateBlog extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPost(req, resp);
        req.setCharacterEncoding("UTF-8");
        ServletContext sc = getServletContext();
        ApplicationContext as =(ApplicationContext) sc.getAttribute("ApplicationContext");//监听器
        UserService us= as.getBean("userService",UserService.class);
        UserBlog userBlog = new UserBlog();
        int userid;
        String blog;
        String check="";
        check=req.getParameter("need");
        userid =Integer.parseInt(check);

        blog = req.getParameter(check+"blog");
        userBlog.setId(userid);

        userBlog.setBlog(blog);

        us.UpdateBlog(userBlog);
        resp.sendRedirect("index.jsp");

    }
}
