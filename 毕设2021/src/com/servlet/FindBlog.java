package com.servlet;

import com.dao.Friends;
import com.dao.UserBlog;
import com.dao.UserDao_1;
import com.service.UserService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.context.ApplicationContext;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@WebServlet("/FindBlog")
public class FindBlog extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPost(req, resp);
        req.setCharacterEncoding("UTF-8");
        ServletContext sc = getServletContext();
        ApplicationContext as =(ApplicationContext) sc.getAttribute("ApplicationContext");//监听器
        UserService us= as.getBean("userService",UserService.class);
        String c =req.getParameter("mohu");
        List<UserBlog> userblog = us.SelectByblog("%"+c+"%");
//        System.out.println("323232");
//        req.getSession().setAttribute("list",friends);
        req.setAttribute("list",userblog);
        req.getRequestDispatcher("findblog.jsp").forward(req,resp);
//        resp.sendRedirect("queryByName.jsp");

    }
}

